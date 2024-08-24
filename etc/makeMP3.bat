@                                                                                                                                                                                                                                                                                                                       echo off

:LOOP
if "%~1" == "" exit/b

ffmpeg -i "%~1" -vn "%~dpn1.mp3"

:S/1
shift /1
goto:LOOP


