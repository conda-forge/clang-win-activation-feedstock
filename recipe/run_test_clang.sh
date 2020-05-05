set -e

echo "CONDA_BUILD_WINSDK: $CONDA_BUILD_WINSDK"
echo "CI: $CI"
$CC $CFLAGS test.c $LDFLAGS -v
test -f a.exe
$CXX $CXXFLAGS test.cpp $LDFLAGS -v
