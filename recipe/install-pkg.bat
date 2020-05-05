md "%PREFIX%\etc\conda\activate.d"
if errorlevel 1 exit /B 1
copy "%RECIPE_DIR%\activate-clang_win-64.bat" "%PREFIX%\etc\conda\activate.d\activate-clang_win-64.bat"
if errorlevel 1 exit /B 1
pushd "%PREFIX%\etc\conda\activate.d"
sed -i 's/@YEAR@/%YEAR%/g' activate-clang_win-64.bat
if errorlevel 1 exit /B 1
sed -i 's/@VER@/%VER%/g' activate-clang_win-64.bat
if errorlevel 1 exit /B 1
sed -i 's/@PKG_VERSION@/%PKG_VERSION%/g' activate-clang_win-64.bat
if errorlevel 1 exit /B 1
popd
