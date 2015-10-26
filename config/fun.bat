set "fl=%fl:"=%"
setlocal enabledelayedexpansion
for %%i in ("%fl%") do set fl=%%~fi
for /f "delims=" %%i in ('type "%fl%"') do (
    set ss=%%i
    set "ss=!ss:%rp%=%ep%!"
    echo !ss!>>my_tmp.txt
)