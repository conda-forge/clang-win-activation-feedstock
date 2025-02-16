@echo on

%CXX% %CXXFLAGS% test.cpp %LDFLAGS% -v
if %ERRORLEVEL% neq 0 exit 1
if [%CXX%] == [clang-cl.exe] (
    REM clang-cl has a different default exe name
    test.exe
    if %ERRORLEVEL% neq 0 exit 1
) else (
    a.exe
    if %ERRORLEVEL% neq 0 exit 1
)
