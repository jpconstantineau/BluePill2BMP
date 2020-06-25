
@echo off

SET EXE1="%~dp0stlink-1.6.1-i686-w64-mingw32\bin\st-flash.exe"
SET EXE="%~dp0stlink-1.6.1-x86_64-w64-mingw32\bin\st-flash.exe"
echo %EXE%
%EXE% --reset write binaries\blackmagic_dfu.bin 0x8000000
%EXE% --flash=128k write binaries\blackmagic.bin 0x8002000