@echo off 
title LOLCleanMaster v1.0.0
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
if %errorlevel% equ 0 (
goto Clean
)else goto Check

:Clean
set /p place=<%x%
if "%place%"=="" goto Check
set file=%place:~0,-21%
echo �w�����|�ö}�l�M���U���ɮפ�...
timeout /t 2 >nul
del /f /s /q "%file%Logs\*.*"
echo=
echo �U���ɮפw�M������!
pause>nul