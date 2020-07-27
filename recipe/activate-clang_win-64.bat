@echo on

if NOT [%BUILD_PREFIX%] == [] (
  if EXIST %BUILD_PREFIX%\lib\clang\@PKG_VERSION@\lib\windows\clang_rt.builtins-x86_64.lib (
    set "CLANG_BUILD_PREFIX=%BUILD_PREFIX%"
  ) else (
    set "CLANG_BUILD_PREFIX=%PREFIX%"
  )
) else (
  set "CLANG_BUILD_PREFIX=%PREFIX%"
)

set "CXX=clang++.exe"
set "CC=clang.exe"
set "NM=llvm-nm.exe"
set "LD=lld-link.exe"
set "AR=llvm-ar.exe"
set "RANLIB=llvm-ranlib.exe"
set "NM=llvm-nm.exe"
set "LD=lld-link.exe"

set "CPPFLAGS_USED=-D_CRT_SECURE_NO_WARNINGS -D_MT -D_DLL -nostdlib -Xclang --dependent-lib=msvcrt -fuse-ld=lld -fno-aligned-allocation"
set "LDFLAGS=-nostdlib -Xclang --dependent-lib=msvcrt -fuse-ld=lld -Wl,-defaultlib:%CONDA_PREFIX%/lib/clang/@PKG_VERSION@/lib/windows/clang_rt.builtins-x86_64.lib"
set "CFLAGS=@CFLAGS@ %CPPFLAGS_USED%"
set "CXXFLAGS=@CXXFLAGS@ %CPPFLAGS_USED%"
