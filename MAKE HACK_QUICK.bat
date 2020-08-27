@echo off
setlocal enabledelayedexpansion

set INPUT=%~dp0Clean.GBA
set OUTPUT=%~dp0Endless_Nights.GBA
set MASTER=%~dp0MASTER.event

echo --------------------------------

cd %~dp0
copy "%INPUT%" "%OUTPUT%"

cd "Event Assembler"

echo --------------------------------
echo Assembling ROM. Please wait...
echo --------------------------------

ColorzCore A FE8 "-output:%OUTPUT%" "-input:%MASTER%" --nocash-sym

cd "%~dp0ups"
ups diff -b "%~dp0Clean.gba" -m "%~dp0Endless_Nights.gba" -o "%~dp0Endless_Nights.ups"

pause