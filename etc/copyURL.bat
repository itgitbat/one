@                                                                                                                                                                                                                                                                                                                       echo off

if "%~1" == "" exit/b
if "%~2" == "" exit/b
rclone copyurl %* --progress --stats-one-line --fast-list --copy-links --ignore-case --checksum --no-traverse --drive-server-side-across-configs --drive-acknowledge-abuse --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36" --no-clobber 

