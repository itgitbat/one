@                                                                                                                                                                                                                                                                                                                                           echo off

:LOOP
if "%~1" == "" exit/b
goto:MAIN

:S/1
shift /1
goto:LOOP

:MAIN

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






