@                                                                                                                                                                                                                                                                                                                       echo off

    for %%$ in ( "HKCU\Software\0\ColorCon" ) do for /f usebacktokens^=3* %%A in ( 

        `2^>NUL reg query %%$ ^|^| echo one two 2 3 5 6 8 9 A B D E` 

) do reg add %%$ -d "%%B %%A" -f 2>NUL >NUL & color %%A
