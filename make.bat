
beebasm -i src\Prebuild.6502
beebasm -i src\Master.6502

crc32dos bin\GALA3 | findstr /C:"a2b41e0e" 
@Echo a2b41e0e  -  Original Galaforce binary
@echo off

if errorlevel 1 (
  echo. CRC Fail
) ELSE (
  echo. CRC Match! Building ssd image
  beebasm -i src\Master.6502 -do Galaforce.ssd -boot Gala -boottype 1 
)

