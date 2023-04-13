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
      # these get determined & filled in by install-pkg.sh,
      # which produces a list of "component|url" pairs
      declare -a COMPONENT_URLS=(
        @COMPONENT_URLS@
      )

      for map in "${COMPONENT_URLS[@]}"; do
        # component=$(echo $map | cut -d '|' -f1)
        url=$(echo $map | cut -d '|' -f2)
        # download and unpacks into Contents/VC/Tools/MSVC/${MSVC_HEADERS_VERSION}/...
        curl -L $url -o tmp.zip && unzip -oqq tmp.zip && rm tmp.zip
      done

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
    popd
    rm -rf tmp
  popd
fi
