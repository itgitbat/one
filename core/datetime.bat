@                                                                                                                                                                                                                                                                                                                                           echo off

for /f usebacktokens^=* %%T in ( `cmd/q/v/c "for /f usebacktokens^=1* %%A in ( '!DATE:~-4!-!DATE:~4^,2!-!DATE:~7^,2!T!TIME:~^,2!_!TIME:~3^,2!.!TIME:~6^,2!' ) do for /f usebacktokens^=* %%C in ( `cmd/q/c if [%%B] ^=^= [] ^( echo %%A^) else echo %%A0%%B` ) do echo %%C"` 
) do echo %%T
