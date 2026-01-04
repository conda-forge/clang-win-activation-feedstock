@echo on

%CC% %CFLAGS% -v test.c %LDFLAGS%
if %ERRORLEVEL% neq 0 exit 1
if [%CC%] == [clang-cl.exe] (
    REM clang-cl has a different default exe name
    test.exe
    if %ERRORLEVEL% neq 0 exit 1
) else (
    a.exe
    if %ERRORLEVEL% neq 0 exit 1
)

cmake -G Ninja cmake_test_c
if %ERRORLEVEL% neq 0 exit 1
