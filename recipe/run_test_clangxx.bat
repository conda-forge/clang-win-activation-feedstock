@echo on

%CXX% %CXXFLAGS% -v test.cpp %LDFLAGS%
if %ERRORLEVEL% neq 0 exit 1
if [%CXX%] == [clang-cl.exe] (
    REM clang-cl has a different default exe name
    test.exe
    if %ERRORLEVEL% neq 0 exit 1
) else (
    a.exe
    if %ERRORLEVEL% neq 0 exit 1
)

cmake -G Ninja cmake_test_cxx
if %ERRORLEVEL% neq 0 exit 1
