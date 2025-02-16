@echo on

%CXX% %CXXFLAGS% test.cpp %LDFLAGS% -v
if %ERRORLEVEL% neq 0 exit 1
a.exe
if %ERRORLEVEL% neq 0 exit 1
