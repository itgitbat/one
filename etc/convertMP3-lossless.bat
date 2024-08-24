@                                                                                                                                                                                                                                                                                                                       echo off



:LOOP
if "%~1" == "" exit/b

ffmpeg -i "%~1" -aq 1 "%~dpn1.mp3"

:S/1
shift /1
goto:LOOP

: // -aq 2 == lossy

