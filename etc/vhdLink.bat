@                                                                                                                                                                                                                                                                                                                       echo off

if "%~1" == "" exit/b

for /f usebacktokens^=* %%I in ( `cmd/q/c 
    for %%i in ^( "%~1" ^) do
    for /f usebacktokens^^^^^=* %%I in ^( `rclone cat %%i --copy-links --offset 575 --count 513 ^^^^^^^| find /v ""` ^) do 
    if not "%%~I" ^=^= "" 
    if not "%%~I" ^=^= " " 
    echo:^^^| set /p dummy=%%I` 
) do echo %%I



