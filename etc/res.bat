@                                                                                                                                                                                                                                                                                                                       echo off

for %%I in ( "%~dp0." ) do for %%I in ( "%%~dpnxI:screen.res" ) do ( 
    setres -i > %%I
    for /f usebacktokens^=1*delims^=^x %%J in ( `more ^< %%I ^| find /v "" ` ) do ( 
        for %%! in ( %~d1 ) do setres -w %%J -h %%K -f & exit/b
        if %%J EQU 2560 setres -w 1680 -h 1050 -f 
        if %%J EQU 1680 setres -w 2560 -h 1440 -f
    )
)



