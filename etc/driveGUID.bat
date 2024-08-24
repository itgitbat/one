@                                                                                                                                                                                                                                                                                                                       echo off

if "%~1" == "" goto:NULL 
if "%~d1" == "\\" goto:UNC 
if /i "%~1" == "--link" goto:JUNQ 
if /i "%~1" == "--junq" goto:JUNQ 
if "%~2" == "" goto:SOLO 


:LOOP
if "%~1" == "" exit/b
if not exist "%~1" goto:S/1
for /f usebacktokens^=1*delims^=^[^] %%A in ( `fsutil volume list ^| find /i "%~d1" /n` 
) do for /f usebacktokens^=* %%B in ( `cmd/q/c for /L %%L in ^( %%A -2 0 ^) do if not %%L EQU %%A echo %%L^^^& exit/b` 
) do for /f usebacktokens^=* %%C in ( `cmd/q/c for /f usebackskip^^^^^=%%Btokens^^^^^=* %%I in ^( `fsutil volume list` ) do echo %%I^^^& exit/b` 
) do echo %%C "%~1"

:S/1
shift /1
goto:LOOP


:JUNQ
if "%~1" == "" exit/b
if not exist "%~1" goto:S/1J
for /f usebacktokens^=1*delims^=^[^] %%A in ( `fsutil volume list ^| find /i "%~d1" /n` 
) do for /f usebacktokens^=* %%B in ( `cmd/q/c for /L %%L in ^( %%A -2 0 ^) do if not %%L EQU %%A echo %%L^^^& exit/b` 
) do for /f usebacktokens^=* %%C in ( `cmd/q/c for /f usebackskip^^^^^=%%Btokens^^^^^=* %%I in ^( `fsutil volume list` ) do echo %%I^^^& exit/b` 
) do for /f usebacktokens^=* %%E in ( `cmd/q/c for /L %%L in ^( 0 1 9 ^) do for /L %%M in ^( 0 1 9 ^) do if not %%L%%M EQU 00 for %%O in ^( "%~1-%%L%%M" ^) do if not exist %%O echo %%O^^^& exit/b` 
) do mklink /j "%%~C%%~pnxE" "%%~C%~pnx1" 2>NUL >NUL

:S/1J
shift /1
goto:JUNQ



:SOLO
for /f usebacktokens^=1*delims^=^[^] %%A in ( `fsutil volume list ^| find /i "%~d1" /n` 
) do for /f usebacktokens^=* %%B in ( `cmd/q/c for /L %%L in ^( %%A -2 0 ^) do if not %%L EQU %%A echo %%L^^^& exit/b` 
) do for /f usebacktokens^=* %%C in ( `cmd/q/c for /f usebackskip^^^^^=%%Btokens^^^^^=* %%I in ^( `fsutil volume list` ) do echo %%I^^^& exit/b` 
) do echo %%C
exit/b


:UNC
for %%0 in ( "%CD%" ) do for %%1 in ( "%%~d0" ) do for /f usebacktokens^=1*delims^=^[^] %%A in ( `fsutil volume list ^| find /i %%1 /n` 
) do for /f usebacktokens^=* %%B in ( `cmd/q/c for /L %%L in ^( %%A -2 0 ^) do if not %%L EQU %%A echo %%L^^^& exit/b` 
) do for /f usebacktokens^=* %%C in ( `cmd/q/c for /f usebackskip^^^^^=%%Btokens^^^^^=* %%I in ^( `fsutil volume list` ) do echo %%I^^^& exit/b` 
) do echo %%C
exit/b


:NULL
for /f usebacktokens^=1* %%A in ( `fsutil fsinfo drives` ) do for %%C in ( %%B ) do for /f usebacktokens^=3* %%A in ( `fsutil fsinfo drivetype "%%~dC"` 
) do if /i [%%A] == [Fixed] for /f usebacktokens^=1*delims^=^: %%0 in ( '%%~dC' ) do ( 
    for /f usebacktokens^=1*delims^=^[^] %%A in ( `fsutil volume list ^| find /i "%%~dC" /n` 
    ) do for /f usebacktokens^=* %%B in ( `cmd/q/c for /L %%L in ^( %%A -2 0 ^) do if not %%L EQU %%A echo %%L^^^& exit/b` 
    ) do for /f usebacktokens^=* %%I in ( `cmd/q/c "for /f usebackskip^=%%Btokens^=* %%I in ( `fsutil volume list` ) do echo %%I%%0& exit/b"` 
    ) do echo %%I
)







