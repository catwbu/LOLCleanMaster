@echo off 
title LOLCleanMaster v1.0.0
set loop=0
set x=LOLCleanMaster.dll
IF EXIST %x% goto clean
:Check
cls
echo 正在搜尋LOL遊戲路徑中...
set /a loop=loop+1
if %loop%==1 set drive=c
if %loop%==2 set drive=d
if %loop%==3 set drive=e
if %loop%==4 (
echo 找不到遊戲目錄.
del /f /s /q %~dp0%x%>nul
pause&exit
)
dir /c /b /s "%drive%:\League of Legends.exe">%x%
if %errorlevel% equ 0 (
goto Clean
)else goto Check

:Clean
set /p place=<%x%
if "%place%"=="" goto Check
set file=%place:~0,-21%
echo 已找到路徑並開始清除垃圾檔案中...
timeout /t 2 >nul
del /f /s /q "%file%Logs\*.*"
echo=
echo 垃圾檔案已清除完成!
pause>nul