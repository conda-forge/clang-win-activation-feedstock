#!/bin/bash

MSVC_HEADERS_VERSION=@MSVC_HEADERS_VERSION@

[ -z "${CI}" ] || export CONDA_BUILD_WINSDK=/tmp/cf-ci-winsdk

if [[ -z "${CONDA_BUILD_WINSDK}" ]]; then
    echo "CONDA_BUILD_WINSDK" is not set.
    return 0
fi

echo "By setting CONDA_BUILD_WINSDK, you are agreeing to the terms and conditions of the MSVC headers"

MSVC_HEADERS_DIR=${CONDA_BUILD_WINSDK}/msvc-${MSVC_HEADERS_VERSION}

if [[ ! -d "${MSVC_HEADERS_DIR}" ]]; then
  mkdir -p "${MSVC_HEADERS_DIR}"
  pushd "${MSVC_HEADERS_DIR}"
    mkdir -p tmp
    pushd tmp
      # These URLs come out os the HTTP API used by vs_buildtools.exe.
      # You can use https://github.com/mstorsjo/msvc-wine/blob/9ebc76c16e5849438ddb6566042af87dcff0ca1e/vsdownload.py
      # to download these files programatically. We are only interested in the subset that creates the headers and x64
      # libraries in Contents/VC/Tools/MSVC/${MSVC_HEADERS_VERSION}/
      #
      # To find the download URLs, do
      #  1. Run a full download using python vsdownload.py --msvc-15.9 --accept-license  --dest . --major 16 Microsoft.VisualStudio.Component.VC.v141.x86.x64
      #  2. Use `(rip)grep 'Contents/VC/Tools/MSVC/${MSVC_HEADERS_VERSION}/'` to determine all *.vsix's that have contain relevant content.
      #  3. Add debug output to https://github.com/mstorsjo/msvc-wine/blob/9ebc76c16e5849438ddb6566042af87dcff0ca1e/vsdownload.py#L415
      #     to fine the correct `payload["url"]` matching the vsix filenames in `fileid`.
      #  4. Update the URLs in this script.

      # Microsoft.VisualC.14.16.CRT.Headers-14.16.27024
      curl -L -O https://download.visualstudio.microsoft.com/download/pr/d81bcf7f-cab1-4a5d-adf7-3dcf41f7f828/55c794f74001b14140316aaac93a17ea/microsoft.visualc.14.16.crt.headers.vsix
      unzip -oqq microsoft.visualc.14.16.crt.headers.vsix
      # Microsoft.VisualC.14.16.CRT.x64.Desktop
      curl -L -O https://download.visualstudio.microsoft.com/download/pr/dfc49fc4-fa89-4e4e-9b17-308687b03a96/63e78372ca3347f2adc4260ad5000c8b/microsoft.visualc.14.16.crt.x64.desktop.vsix
      unzip -oqq microsoft.visualc.14.16.crt.x64.desktop.vsix
      # Microsoft.VisualC.14.16.CRT.x64.OneCore.Desktop-14.16.27024
      curl -L -O https://download.visualstudio.microsoft.com/download/pr/513a1054-9ce0-4cc1-9a8c-1ad8efd41c42/816f10f52ffa062090560657d66f2c1d/microsoft.visualc.14.16.crt.x64.onecore.desktop.vsix
      unzip -oqq microsoft.visualc.14.16.crt.x64.onecore.desktop.vsix
      # Microsoft.VisualC.14.16.CRT.x64.Store-14.16.27024
      curl -L -O https://download.visualstudio.microsoft.com/download/pr/48f20c86-fd91-4ff6-80dc-3305ddeaeb3a/b5fa5934b2513bb45592efbc5d5b316f/microsoft.visualc.14.16.crt.x64.store.vsix
      unzip -oqq microsoft.visualc.14.16.crt.x64.store.vsix
      # Microsoft.VisualC.14.16.PGO.X64-14.16.27024
      curl -L -O https://download.visualstudio.microsoft.com/download/pr/848c571a-7dab-4aec-b765-6a600bb321c0/763e58ea21f4c68e7519532281106b9d/microsoft.visualc.14.16.pgo.x64.vsix
      unzip -oqq microsoft.visualc.14.16.pgo.x64.vsix
      mkdir -p ${MSVC_HEADERS_DIR}/include
      mkdir -p ${MSVC_HEADERS_DIR}/lib
      mv Contents/VC/Tools/MSVC/${MSVC_HEADERS_VERSION}/include/* ${MSVC_HEADERS_DIR}/include/
      mv Contents/VC/Tools/MSVC/${MSVC_HEADERS_VERSION}/lib/* ${MSVC_HEADERS_DIR}/lib/

      # Check for case sensitity of the underlying filesystem.
      # On OSX filesystems can be either in case-sensitive or -insensitive mode,
      # the latter is the default.
      mkdir ${CONDA_BUILD_WINSDK}/case-sensitivity
      touch ${CONDA_BUILD_WINSDK}/case-sensitivity/a
      touch ${CONDA_BUILD_WINSDK}/case-sensitivity/A
      num_files=$(find ${CONDA_BUILD_WINSDK}/case-sensitivity -type f | wc -l)
      rm -r ${CONDA_BUILD_WINSDK}/case-sensitivity

      # file system is case sensitive
      if [ "$num_files" -eq "2" ]; then
        echo "Making symlinks for case-sensitive filesystems"
        # Make symlinks for libraries
        for f in $(find ${MSVC_HEADERS_DIR}/lib/x64 -name "*.[L|l]ib"); do
            name=$(basename $f)
            full_lower=$(echo "$name" | awk '{print tolower($0)}')
            if [[ "$name" != "$full_lower" ]]; then
                ln -sf "$f" "$(dirname $f)/$full_lower"
            fi
            full_upper=$(echo "${name:0:${#name} - 4}" | awk '{print toupper($0)}')
            full_upper="${full_upper}.lib"
            if [[ "$name" != "$full_upper" ]]; then
                ln -sf "$f" "$(dirname $f)/$full_upper"
            fi
            lib_lower="${name:0:${#name} - 4}.lib"
            if [[ "$lib_lower" != "$name" && "$lib_lower" != "$full_lower" ]]; then
                ln -sf "$f" "$(dirname $f)/$lib_lower"
            fi
        done
      fi
      rm -rf Contents
      rm -rf microsoft.visualc.14.16.crt.headers.vsix
      rm -rf microsoft.visualc.14.16.crt.x64.desktop.vsix
      rm -rf microsoft.visualc.14.16.crt.x64.onecore.desktop.vsix
      rm -rf microsoft.visualc.14.16.crt.x64.store.vsix
      rm -rf microsoft.visualc.14.16.pgo.x64.vsix
    popd
    rm -rf tmp
  popd
fi
