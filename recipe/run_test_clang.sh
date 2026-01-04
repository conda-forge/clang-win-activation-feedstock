#!/bin/bash
set -ex

echo "CONDA_BUILD_WINSDK: $CONDA_BUILD_WINSDK"
echo "CI: $CI"
$CC $CFLAGS test.c $LDFLAGS -v
test -f a.exe

cmake -G Ninja ./cmake_test_c
