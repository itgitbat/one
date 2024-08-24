@                                                                                                                                                                                                                                                                                                                       echo off


:LOOP
if "%~1" == "" exit/b


for /f usebacktokens^=* %%I in ( `2^>^&1 ffmpeg -i "%~1" ^| find /i "stream" ^| find /i "0:0"` ) do for %%I in ( %%I 
) do for /f usebacktokens^=1*delims^=^x %%J in ( '%%I' ) do if %%J GEQ 10 if %%K GEQ 10 if %%K GEQ %%J echo "%~1"



:S/1
shift /1
goto:LOOP






