@echo off 
title LOLCleanMaster v1.0.0
set "str=echo ���b�j�MLOL�C�����|��..."
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
)else echo �䤣��C���ؿ�.&%z%>nul&pause&exit

:Clean
set /p place=<%x%
if "%place%"=="" goto Check
set file=%place:~0,-21%
echo �w�����|�ö}�l�M���U���ɮפ�...
timeout /t 2 >nul
del /f /s /q "%file%Logs\*.log"
del /f /s /q "%file%Logs\*.txt"
echo=
echo �U���ɮפw�M������!
pause>nul
