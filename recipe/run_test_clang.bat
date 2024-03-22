@echo on

%CC% %CFLAGS% test.c %LDFLAGS% -v
if %ERRORLEVEL% neq 0 exit 1
a.exe
if %ERRORLEVEL% neq 0 exit 1
%CXX% %CFLAGS% test.cpp %LDFLAGS% -v
if %ERRORLEVEL% neq 0 exit 1
a.exe
if %ERRORLEVEL% neq 0 exit 1
