@                                                                                                                                                                                                                                                                                                                       echo off

if "%~1" == "" exit/b


ffmpeg -i "%~1" -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" "%~dpn1.mp4"


:S/1
shift /1
goto:LOOP



