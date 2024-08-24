@                                                                                                                                                                                                                                                                                                                       echo off

:LOOP
if "%~1" == "" exit/b
for /f usebacktokens^=* %%I in ( `2^>NUL where %1` ) do explorer /select,"%%~I"

:S/1
shift /1
goto:LOOP


