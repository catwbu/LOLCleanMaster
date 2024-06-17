@echo off 
title LOLCleanMaster v1.0.0
set "str=echo 正在搜尋LOL遊戲路徑中..."
set x=LOLCleanMaster.dll
set z=del /f /s /q %~dp0%x%
IF EXIST %x% goto clean
:Check
%str%
dir /c /b /s "c:\League of Legends.exe">%x%
FINDSTR "League of Legends.exe" %x% >nul
if %errorlevel% equ 0 (
goto Clean
)else cls&%str%

dir /c /b /s "d:\League of Legends.exe">%x%
FINDSTR "League of Legends.exe" %x% >nul
if %errorlevel% equ 0 (
goto Clean
)else cls&%str%

dir /c /b /s "e:\League of Legends.exe">%x%
FINDSTR "League of Legends.exe" %x% >nul
if %errorlevel% equ 0 (
goto Clean
)else echo 找不到遊戲目錄.&%z%>nul&pause&exit

:Clean
set /p place=<%x%
if "%place%"=="" goto Check
set file=%place:~0,-21%
echo 已找到路徑並開始清除垃圾檔案中...
timeout /t 2 >nul
del /f /s /q "%file%Logs\*.log"
del /f /s /q "%file%Logs\*.txt"
echo=
echo 垃圾檔案已清除完成!
pause>nul
