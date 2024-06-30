@                                                                                                                                                                                                                                                                                                                                           echo off

    for %%$ in ( explorer ) do ((
    
        taskkill -f -im %%$.exe
        start "" %%$.exe
        
    ) 2>NUL >NUL
)
