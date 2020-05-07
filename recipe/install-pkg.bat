md "%PREFIX%\etc\conda\activate.d"
if errorlevel 1 exit /B 1
rem We need the additional z in the activation name to have the activation call
rem run after the vs2017 activation. See https://github.com/conda/conda/pull/7176
rem for conda's ordering implementation.
copy "%RECIPE_DIR%\activate-clang_win-64.bat" "%PREFIX%\etc\conda\activate.d\vs%YEAR%_z-clang_win-64.bat"
if errorlevel 1 exit /B 1
pushd "%PREFIX%\etc\conda\activate.d"
sed -i 's/@YEAR@/%YEAR%/g' vs%YEAR%_z-clang_win-64.bat
if errorlevel 1 exit /B 1
sed -i 's/@VER@/%VER%/g' vs%YEAR%_z-clang_win-64.bat
if errorlevel 1 exit /B 1
sed -i 's/@PKG_VERSION@/%PKG_VERSION%/g' vs%YEAR%_z-clang_win-64.bat
if errorlevel 1 exit /B 1
popd
