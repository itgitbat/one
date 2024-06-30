@                                                                                                                                                                                                                                                                                                                                           echo off

for /f usebacktokens^=1* %%A in ( 'CHCP 65001' ) do for /f usebacktokens^=3* %%C in ( `%%A` ) do if not %%D EQU %%B %%A %%B 2>NUL >NUL
