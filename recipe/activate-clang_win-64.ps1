$Env:CC="clang.exe"
$Env:NM="llvm-nm.exe"
$Env:LD="lld-link.exe"
$Env:AR="llvm-ar.exe"
$Env:RANLIB="llvm-ranlib.exe"
$Env:NM="llvm-nm.exe"
$Env:LD="lld-link.exe"

$Env:CPPFLAGS_USED="-D_CRT_SECURE_NO_WARNINGS -nostdlib -fms-runtime-lib=dll -fuse-ld=lld -fno-aligned-allocation"
$Env:LDFLAGS="-nostdlib -Wl,-defaultlib:" + $Env:CONDA_PREFIX.Replace("\","/")
$Env:CFLAGS="@CFLAGS@" + $Env:CPPFLAGS_USED
