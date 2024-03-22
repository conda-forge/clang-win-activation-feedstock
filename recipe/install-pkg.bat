@echo on
md "%PREFIX%\etc\conda\activate.d"

for /f "tokens=1 delims=." %%i in ("%PKG_VERSION%") do (
  set "MAJOR_VER=%%i"
)

rem We need the additional z in the activation name to have the activation call
rem run after the vs2017 activation. See https://github.com/conda/conda/pull/7176
rem for conda's ordering implementation.
copy "%RECIPE_DIR%\activate-clang_win-64.bat" "%PREFIX%\etc\conda\activate.d\vs%VSYEAR%_z-clang_win-64.bat"
if errorlevel 1 exit /B 1
pushd "%PREFIX%\etc\conda\activate.d"
sed -i 's/@CFLAGS@/%FINAL_CFLAGS%/g' vs%VSYEAR%_z-clang_win-64.bat
if errorlevel 1 exit /B 1
sed -i 's/@CXXFLAGS@/%FINAL_CXXFLAGS%/g' vs%VSYEAR%_z-clang_win-64.bat
if errorlevel 1 exit /B 1
sed -i 's/@MAJOR_VER@/%MAJOR_VER%/g' vs%VSYEAR%_z-clang_win-64.bat
if errorlevel 1 exit /B 1
popd
