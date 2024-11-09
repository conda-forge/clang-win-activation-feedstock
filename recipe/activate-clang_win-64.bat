@echo on

set "CC=clang-cl.exe"
set "NM=llvm-nm.exe"
set "LD=lld-link.exe"
set "AR=llvm-ar.exe"
set "RANLIB=llvm-ranlib.exe"

set "CPPFLAGS_USED=-D_CRT_SECURE_NO_WARNINGS -nostdlib -fms-runtime-lib=dll -fuse-ld=lld -fno-aligned-allocation"
set "LDFLAGS=-nostdlib -Wl,-defaultlib:%CONDA_PREFIX:\=/%/lib/clang/@MAJOR_VER@/lib/windows/clang_rt.builtins-x86_64.lib"
set "CFLAGS=@CFLAGS@ %CPPFLAGS_USED%"
