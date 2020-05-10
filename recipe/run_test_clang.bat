@echo on

%CC% %CFLAGS% test.c %LDFLAGS% -v
if errorlevel 1 exit /B 1
a.exe
if errorlevel 1 exit /B 1
%CXX% %CFLAGS% test.cpp %LDFLAGS% -v
if errorlevel 1 exit /B 1
a.exe
if errorlevel 1 exit /B 1
