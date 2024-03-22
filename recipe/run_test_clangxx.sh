#!/bin/bash
set -ex

echo "CONDA_BUILD_WINSDK: $CONDA_BUILD_WINSDK"
echo "CI: $CI"
$CXX $CXXFLAGS test.cpp $LDFLAGS -v
test -f a.exe
