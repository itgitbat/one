@                                                                                                                                                                                                                                                                                                                                           echo off

:LOOP
if "%~1" == "" exit/b
goto:MAIN

:S/1
shift /1
goto:LOOP

:MAIN



    for /f usebacktokens^=* %%A in ( 
        ` cmd/q/c for /f usebacktokens^^^^^=1* %%A in ^( `certutil -hashfile "%~1" MD5` ^) do if [%%B] ^=^= [] echo %%A^^^& exit/b ` 
        ) do for /f usebacktokens^=1*delims^=^" %%0 in ( '"%~1"' 
           ) do for /f usebacktokens^=* %%1 in ( '"%%0"' 
           ) do for /f usebacktokens^=1*delims^=^( %%2 in ( '%%~n0' 
           ) do if "%%~3" == "" ( 
               for %%B in ( "%~dpn1_%%A%~x1" ) do if not exist %%B ( 
                     ren "%~1" "%%~nxB"
               ) else for /f usebacktokens^=* %%B in ( `cmd/q/c for /L %%L in ^( 0 1 9 ^) do for /L %%M in ^( 0 1 9 ^) do if not %%M EQU 0 for %%O in ^( "%~dpn1_%%A.%%L%%M%~x1" ^) do if not exist %%O echo %%O^^^& exit/b ` 
            ) do ren "%~1" "%%~nxB" 
        ) else set $BRACKET=%~n1& for /f usebacktokens^=* %%B in ( `cmd/q/v/c 


((
               
            for %%B in ( for /f usebacktokens^=1*delims^=^( %%B in ( '

            for %%B in ( "%~dpn1_%%A%~x1" ) do if not exist %%B ( ren "%~1" "%%~nxB"  
                ) else 
for /f usebacktokens^=* %%B in ( `cmd/q/c for /L %%L in ^( 0 1 9 ^) do for /L %%M in ^( 0 1 9 ^) do if not %%M EQU 0 for %%O in ^( "%~dpn1_%%A.%%L%%M%~x1" ^) do if not exist %%O echo %%O^^^& exit/b ` 
                    ) do ren "%~1" "%%~nxB"
    ) 2>NUL >NUL
)
goto:S/1






exit/b
: // 
: -------------
: \\





    for /f usebacktokens^=* %%A in ( 
        ` cmd/q/c for /f usebacktokens^^^^^=1* %%A in ^( `certutil -hashfile "%~1" MD5` ^) do if [%%B] ^=^= [] echo %%A^^^& exit/b ` 
        ) do (( 

            for %%B in ( "%~dpn1_%%A%~x1" ) do if not exist %%B ( ren "%~1" "%%~nxB"  
                ) else for /f usebacktokens^=* %%B in ( `cmd/q/c for /L %%L in ( 0 1 9 ) do for /L %%M in ( 0 1 9 ) do if not %%M EQU 0 for %%O in ( "%~dpn1_%%A.%%L%%M%~x1" ) do if not exist %%O echo %%O^^^& exit/b ` 
                    ) do ren "%~1" "%%~nxB"
    ) 2>NUL >NUL
)
goto:S/1






exit/b
: // 
: -------------
: \\


            for %%B in ( "%~dpn1_%%A%~x1" ) do if not exist %%B (( ren "%~1" "%%~nxB" && goto:S/1 ) 2>NUL >NUL 
            ) else for /f usebacktokens^=* %%B in ( `cmd/q/c for /L %%L in ( 0 1 9 ) do for /L %%M in ( 0 1 9 ) do if not %%M EQU 0 for %%O in ( "%~dpn1_%%A.%%L%%M%~x1" ) do if not exist %%O echo %%O^^^& exit/b ` 
                ) do 

            for /f usebacktokens^=* %%B in ( `cmd/q/c for /L %%L in ( 0 1 9 ) do for /L %%M in ( 0 1 9 ) do if not %%M EQU 0 for %%O in ( "%~dpn1_%%A.%%L%%M%~x1" ) do if not exist %%O echo %%O^^^& exit/b ` 
            ) do 

                       for %%i in ^( "%~dpn1_%%A%~x1" ^) do if exist %%i ^( 
                for /f usebacktokens^^^^^=* %%j in ^( `cmd/q/c for /L %%L in ^^^^^( 0 1 9 ^^^^^) do for /L %%M in ^^^^^( 0 1 9 ^^^^^) do for %%O in ^^^^^( "%~dpn1_%%A.%%L%%M%~x1" ^^^^^)
if exist %%i ^( del /q /f %%i ^) else 
                         for %%j in ^( "%~n1" ^) do for /f usebacktokens^^^^^=1*delims^^^^^=^^^^^( %%j in ^( '%%~j' ^) do 


for %%B in ( "%~dpn1_%%A%~x1" ) do for /f usebacktokens^=* 



    for /f usebacktokens^=* %%I in ( 
    
        `
        cmd/q/c for /f usebacktokens^^^^^=1* %%A in ^( `certutil -hashfile "%~1" MD5` ^) do if [%%B] ^=^= [] echo %%A^^^& exit/b 
        ` 
        
        ) do ( 

            if exist "%~1" ((

                ren "%~1" "%~n1_%%I%~x1" && goto:S/1
                
            ) 2>NUL >NUL
        )

            for /f usebacktokens^=* %%J in ( `cmd/q/c for /L %%L in ^( 0 1 9 ^) do for /L %%M in ^( 0 1 9 ^) do for %%O in ^( "%~dpn1_%%I.%%L%%M%~x1" ^) do if not exist %%O echo %%O^^^& exit/b ` 
            ) do ( 
                if exist "%~1" ((
                    ren "%~1" "%%~nxJ"
                    goto:S/1
            ) 2>NUL >NUL
        )
    ) 
)






