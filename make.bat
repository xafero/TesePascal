@echo off
set LAZ=d:\lazarus\lazbuild
echo ### Cleaning... ###
rd /s /q lib
rd /s /q TesePascal\lib
del TesePascal.Tests\*.exe
del TesePascal.Tests\*.o
del TesePascal.Tests\*.ppu
del TesePascal.Tests\*.compiled
echo ### Building library... ###
%LAZ% --verbose TesePascal\tesepascal.lpk
echo ### Building tests... ###
%LAZ% --verbose TesePascal.Tests\TesePascalTests.lpr
echo ### Running tests... ###
TesePascal.Tests\TesePascalTests -a -p --format=plain
echo ### Done. ###
