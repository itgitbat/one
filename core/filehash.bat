@                                                                                                                                                                                                                                                                                                                                           echo off

    for /f usebacktokens^=* %%I in ( 
    
        `
        cmd/q/c for /f usebacktokens^^^^^=1* %%A in ^( `certutil -hashfile "%~1" MD5` ^) do if [%%B] ^=^= [] echo %%A^^^& exit/b 
        ` 
        
) do echo %%I

