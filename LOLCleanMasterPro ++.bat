@echo off 
title LOLCleanMasterPro v1.1.1
set z=個檔案
set "file=D:\Program Files\20170525\GameData\Apps\LoLTW\Game\"
dir /c /b "D:\Program Files\20170525\GameData\Apps\LoLTW\Game\*.log"
dir /s "D:\Program Files\20170525\GameData\Apps\LoLTW\Game\*.log">a.txt
::for /f "delims=位元組 tokens=5" %%i in ('dir /s "%file%*.log"') do set Total=%%i
for /f "tokens=3" %%i in ('dir "%file%*.log" /s^|find "%z%"') do set Total=%%i
ECHO %Total%.
for /f "tokens=1" %%i in ('dir "%file%Logs" /s^|find "%z%"') do set Dcheck2=%%i
::dir "%file%Logs" /s>b.txt
echo %dcheck2%%z%

::del /f /s /q "%systemdrive%\Program Files\Temp\LOL_Public.dmp"
pause
for /f "tokens=3" %%i in ('dir "%file%*.log" /s^|find "%z%"') do set brk1=%%i
for /f "tokens=1" %%i in ('dir "%file%*.log" /s^|find "%z%"') do set brk2=%%i
del /f /q "%file%*.log"