@echo off 
title LOLCleanMasterPro v1.0.0
set loop=0
set x=LOLCleanMaster.dll
IF EXIST %x% goto clean
:Check
cls
echo ���b�j�MLOL�C�����|��...
set /a loop=loop+1
if %loop%==1 set drive=c
if %loop%==2 set drive=d
if %loop%==3 set drive=e
if %loop%==4 (
echo �䤣��C���ؿ�.
del /f /s /q %~dp0%x%>nul
pause&exit
)
dir /c /b /s "%drive%:\League of Legends.exe">%x%
FINDSTR "League of Legends.exe" %x% >nul
if %errorlevel% equ 0 (
goto Clean
)else goto Check

:Clean
set /p place=<%x%
if "%place%"=="" goto Check
set file=%place:~0,-21%
echo �w�����|�ö}�l�M���U���ɮפ�...

dir /s "%file%Logs" >a.txt
for /f "tokens=3" %%i in ('dir "%file%Logs" /s^|find "���ɮ�"') do set Total=%%i
for /f "tokens=1" %%i in ('dir "%file%Logs" /s^|find "���ɮ�"') do set Total2=%%i

set str1=%Total:,=%
set /a count=%str1%/105
set str2=%count:~0,-4%
set str3=%count:~-4,2%

if %count% lss 1000 set str3=0%count:~-4,1%
if "%str2%"=="" set str2=0
timeout /t 1 >nul
del /f /s /q "%file%Logs\*.log"
del /f /s /q "%file%Logs\*.txt"
echo ---------------------------------------------------------------------
echo �w�R���F%Total2%���ɮ�,�@����F%str2%.%str3%MB!
echo=
echo �U���ɮײM������!
echo=
echo=
del /f /s /q a.txt>nul
pause>nul