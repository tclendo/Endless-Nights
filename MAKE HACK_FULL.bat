@echo off
setlocal enabledelayedexpansion

set INPUT=%~dp0Clean.GBA
set OUTPUT=%~dp0Endless_Nights.GBA
set MASTER=%~dp0MASTER.event

echo ------------------------------------

cd %~dp0
copy "%INPUT%" "%OUTPUT%"

echo ------------------------------------
echo  Configuring tables. Please Wait...
echo ------------------------------------

cd "%~dp0Tables/CSV"
echo: | (c2ea "%~dp0Clean.gba")

echo : ENTER
echo ------------------------------------
echo  Inserting text. Please Wait...

cd "%~dp0Text"
echo: | ("text-process-classic.exe" "TextBuildfile.event" --parser-exe "ParseFile.exe")

echo ------------------------------------
echo  Assembling ROM. Please wait...
echo ------------------------------------

cd "%~dp0Event Assembler"
ColorzCore A FE8 "-output:%OUTPUT%" "-input:%MASTER%" --nocash-sym

echo ------------------------------------
echo  Creating UPS patch...
echo ------------------------------------

cd "%~dp0ups"
ups diff -b "%~dp0Clean.gba" -m "%~dp0Endless_Nights.gba" -o "%~dp0Endless_Nights.ups"

echo  Enjoy!
pause