$Env:CC="clang.exe"
$Env:CXX="clang++.exe"
$Env:NM="llvm-nm.exe"
$Env:LD="lld-link.exe"
$Env:AR="llvm-ar.exe"
$Env:RANLIB="llvm-ranlib.exe"

$Env:CPPFLAGS_USED="-D_CRT_SECURE_NO_WARNINGS -nostdlib -fms-runtime-lib=dll -fuse-ld=lld -fno-aligned-allocation"
$Env:LDFLAGS="-nostdlib /link /DEFAULTLIB:" + $Env:CONDA_PREFIX +"\lib\clang\@MAJOR_VER@\lib\windows\clang_rt.builtins-x86_64.lib"
$Env:CFLAGS="@CFLAGS@ " + $Env:CPPFLAGS_USED
$Env:CXXFLAGS="@CXXFLAGS@ " + $Env:CPPFLAGS_USED
