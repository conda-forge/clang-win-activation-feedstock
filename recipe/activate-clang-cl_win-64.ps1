$Env:CC="clang.exe"
$Env:CXX="clang++.exe"
$Env:NM="llvm-nm.exe"
$Env:LD="lld-link.exe"
$Env:AR="llvm-ar.exe"
$Env:RANLIB="llvm-ranlib.exe"

$Env:CPPFLAGS_USED="-DNDEBUG -D_CRT_SECURE_NO_WARNINGS -fms-runtime-lib=dll -fuse-ld=lld"

$Env:LDFLAGS="/DEFAULTLIB:" + $Env:CONDA_PREFIX.Replace('\', '/') + "/lib/clang/@MAJOR_VER@/lib/windows/clang_rt.builtins-x86_64.lib"
# `-Xlinker` was only exposed in v20. It is needed for compatibility with the `flang` CLI
if (@MAJOR_VER@ -ge 20) {
    $Env:LDFLAGS = "-Xlinker " + $Env:LDFLAGS
}

$Env:CFLAGS="@CFLAGS@ " + $Env:CPPFLAGS_USED
$Env:CXXFLAGS="@CXXFLAGS@ /std:c++17 " + $Env:CPPFLAGS_USED
