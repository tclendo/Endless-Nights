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

Core A FE8 "-output:%OUTPUT%" "-input:%MASTER%"

pause