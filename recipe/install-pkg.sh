#!/bin/bash

set -ex

for CHANGE in "activate" "deactivate"
do
    mkdir -p "${PREFIX}/etc/conda/${CHANGE}.d"
    cp "${RECIPE_DIR}/${CHANGE}-${PKG_NAME}.sh" .
    sed -i.bak "s|@CFLAGS@|$FINAL_CFLAGS|g" ${CHANGE}-${PKG_NAME}.sh
    sed -i.bak "s|@CXXFLAGS@|$FINAL_CXXFLAGS|g" ${CHANGE}-${PKG_NAME}.sh
    sed -i.bak "s|@CHOST_BASE@|$CHOST_BASE|g" ${CHANGE}-${PKG_NAME}.sh
    sed -i.bak "s|@CL_VERSION@|$CL_VERSION|g" ${CHANGE}-${PKG_NAME}.sh
    sed -i.bak "s|@PREFIX@|$PREFIX|g" ${CHANGE}-${PKG_NAME}.sh
    sed -i.bak "s|@PKG_VERSION@|$PKG_VERSION|g" ${CHANGE}-${PKG_NAME}.sh
    sed -i.bak "s|@MSVC_HEADERS_VERSION@|$MSVC_HEADERS_VERSION|g" ${CHANGE}-${PKG_NAME}.sh
    sed -i.bak "s|@WINSDK_URL@|$WINSDK_URL|g" ${CHANGE}-${PKG_NAME}.sh
    sed -i.bak "s|@WINSDK_VERSION@|$WINSDK_VERSION|g" ${CHANGE}-${PKG_NAME}.sh
    cp ${CHANGE}-${PKG_NAME}.sh ${PREFIX}/etc/conda/${CHANGE}.d/${CHANGE}-${PKG_NAME}.sh
done

CHOST=$CHOST_BASE$CL_VERSION

if [[ "$PKG_NAME" == "clang_win-64" ]]; then
  mkdir -p $PREFIX/bin
  pushd ${PREFIX}/bin
    ln -sf $(which clang) ${CHOST}-clang
    ln -sf $(which clang++) ${CHOST}-clang++
    ln -sf $(which llvm-as) ${CHOST}-as
    ln -sf $(which llvm-lib) lib
  popd
fi
