#!/bin/bash

WINSDK_VERSION=@WINSDK_VERSION@
WINSDK_URL=@WINSDK_URL@

[ -z "${CI}" ] || export CONDA_BUILD_WINSDK=/tmp/cf-ci-winsdk

if [[ -z "${CONDA_BUILD_WINSDK}" ]]; then
    echo "CONDA_BUILD_WINSDK" is not set.
    exit 1
fi

echo "By setting CONDA_BUILD_WINSDK, you are agreeing to the terms and conditions of the Windows SDK"

WINSDK_DIR=${CONDA_BUILD_WINSDK}/winsdk-${WINSDK_VERSION}

if [[ ! -d "${WINSDK_DIR}" ]]; then
  (
    unset SSL_CERT_DIR
    unset SSL_CERT_FILE
    mkdir -p ${WINSDK_DIR}
    pushd ${WINSDK_DIR}
      curl -L $WINSDK_URL -o win10sdk.iso
      mkdir -p win10sdk_iso
      pushd win10sdk_iso
        7z x ../win10sdk.iso -aoa
        mkdir tmp
        msiextract -C tmp Installers/"Windows SDK Desktop Headers x64-x86_en-us.msi" > /dev/null
        msiextract -C tmp Installers/"Windows SDK Desktop Headers x86-x86_en-us.msi" > /dev/null
        msiextract -C tmp Installers/"Windows SDK Desktop Libs x64-x86_en-us.msi" > /dev/null
        msiextract -C tmp Installers/"Windows SDK Desktop Libs x86-x86_en-us.msi" > /dev/null
        #msiextract -C tmp Installers/"Windows SDK Desktop Tools x64-x86_en-us.msi" > /dev/null
        #msiextract -C tmp Installers/"Windows SDK Desktop Tools x86-x86_en-us.msi" > /dev/null
        msiextract -C tmp Installers/"Windows SDK for Windows Store Apps Headers-x86_en-us.msi" > /dev/null
        msiextract -C tmp Installers/"Windows SDK for Windows Store Apps Libs-x86_en-us.msi" > /dev/null
        #msiextract -C tmp Installers/"Windows SDK for Windows Store Apps Tools-x86_en-us.msi" > /dev/null
        #msiextract -C tmp Installers/"Windows SDK for Windows Store Apps Legacy Tools-x86_en-us.msi" > /dev/null
        msiextract -C tmp Installers/"Universal CRT Headers Libraries and Sources-x86_en-us.msi" > /dev/null
        mkdir -p ${WINSDK_DIR}/include
        mkdir -p ${WINSDK_DIR}/lib
        mv "tmp/Program Files/Windows Kits/10/Lib/${WINSDK_VERSION}"/* ${WINSDK_DIR}/lib/
        mv "tmp/Program Files/Windows Kits/10/Include/${WINSDK_VERSION}"/* ${WINSDK_DIR}/include/
      popd

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
        for f in $(find ${WINSDK_DIR}/lib/um/x64 -name "*.[L|l]ib"); do
            name=$(basename $f)
            full_lower=$(echo "$name" | awk '{print tolower($0)}')
            if [[ "$name" != "$full_lower" ]]; then
                ln -sf "$f" "$(dirname $f)/$full_lower"
            fi
            lib_lower="${name:0:${#name} - 4}.lib"
            if [[ "$lib_lower" != "$name" && "$lib_lower" != "$full_lower" ]]; then
                ln -sf "$f" "$(dirname $f)/$lib_lower"
            fi
        done

        # Create a VFS overlay as the Win SDK assumes case insensitive file system
        echo "version: 0" > winsdk_vfs_overlay.yaml
        echo "case-sensitive: false" >> winsdk_vfs_overlay.yaml
        echo "roots:" >> winsdk_vfs_overlay.yaml

        for dir in $(find ${WINSDK_DIR}/include -type d); do
            files=$(find $dir -maxdepth 1 -name "*.h")
            if [[ "$files" != "" ]]; then
                echo "  - name: \"$dir\"" >> winsdk_vfs_overlay.yaml
                echo "    type: directory" >> winsdk_vfs_overlay.yaml
                echo "    contents:" >> winsdk_vfs_overlay.yaml
                for f in $files; do
                    echo "      - name: \"$(basename $f)\"" >> winsdk_vfs_overlay.yaml
                    echo "        type: file" >> winsdk_vfs_overlay.yaml
                    echo "        external-contents: \"$f\"" >> winsdk_vfs_overlay.yaml
                done
            fi
        done

        # Add symlinks for LLVMs WinMSVC.cmake
        ln -sf ${WINSDK_DIR}/include ${WINSDK_DIR}/Include
        ln -sf ${WINSDK_DIR}/lib ${WINSDK_DIR}/Lib
      fi
      rm -rf win10sdk_iso
      rm -rf win10sdk.iso
      pushd
    popd
  )
fi
