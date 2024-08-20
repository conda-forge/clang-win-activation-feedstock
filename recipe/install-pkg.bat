@echo on
md "%PREFIX%\etc\conda\activate.d"

for /f "tokens=1 delims=." %%i in ("%PKG_VERSION%") do (
  set "MAJOR_VER=%%i"
)

pushd "%PREFIX%\etc\conda\activate.d"
if [%PKG_NAME%] == [clang_win-64] (
    REM We need the additional "y" in the activation name to have the activation call
    REM run after the vs20XX activation, which is named vs2019_compiler_vars.bat; see
    REM https://github.com/conda/conda/pull/7176 for conda's ordering implementation.
    copy "%RECIPE_DIR%\activate-clang_win-64.bat" ".\vs%VSYEAR%_y-clang_win-64.bat"
    if %ERRORLEVEL% neq 0 exit 1
    sed -i 's/@CFLAGS@/%FINAL_CFLAGS%/g' vs%VSYEAR%_y-clang_win-64.bat
    if %ERRORLEVEL% neq 0 exit 1
    sed -i 's/@MAJOR_VER@/%MAJOR_VER%/g' vs%VSYEAR%_y-clang_win-64.bat
    if %ERRORLEVEL% neq 0 exit 1

    copy "%RECIPE_DIR%\activate-clang_win-64.ps1" ".\vs%VSYEAR%_y-clang_win-64.ps1"
    if %ERRORLEVEL% neq 0 exit 1
    sed -i 's/@CFLAGS@/%FINAL_CFLAGS%/g' vs%VSYEAR%_y-clang_win-64.ps1
    if %ERRORLEVEL% neq 0 exit 1
    sed -i 's/@MAJOR_VER@/%MAJOR_VER%/g' vs%VSYEAR%_y-clang_win-64.ps1
    if %ERRORLEVEL% neq 0 exit 1
) else if [%PKG_NAME%] == [clangxx_win-64] (
    REM Similarly, we need clangxx activation after clang (so add "z" after "y"),
    REM to ensure that we have CPPFLAGS_USED available
    copy "%RECIPE_DIR%\activate-clangxx_win-64.bat" ".\vs%VSYEAR%_z-clangxx_win-64.bat"
    if %ERRORLEVEL% neq 0 exit 1
    sed -i 's/@CXXFLAGS@/%FINAL_CXXFLAGS%/g' vs%VSYEAR%_z-clangxx_win-64.bat
    if %ERRORLEVEL% neq 0 exit 1

    copy "%RECIPE_DIR%\activate-clangxx_win-64.ps1" ".\vs%VSYEAR%_z-clangxx_win-64.ps1"
    if %ERRORLEVEL% neq 0 exit 1
    sed -i 's/@CXXFLAGS@/%FINAL_CXXFLAGS%/g' vs%VSYEAR%_z-clangxx_win-64.ps1
    if %ERRORLEVEL% neq 0 exit 1
) else (
    REM shouldn't happen
    exit 1
)
popd
