@echo off 
title LOLCleanMasterPro v1.2.0
set loop=0
set x=LOLCleanMaster.dll
set z=���ɮ�
set stx1=0
set brk2=0
IF EXIST %x% goto clean
:Check
cls
echo ���b���RLOL�C�����|,�Э@�ߵ���...
set /a loop=loop+1
if %loop%==1 set drive=C
if %loop%==2 set drive=D
if %loop%==3 set drive=E
if %loop%==4 (
echo �䤣��C���ؿ�.
del /f /s /q %~dp0%x%>nul
pause&exit
)
echo �j�M�Ϻ�%drive%��...
dir /c /b /s "%drive%:\League of Legends.exe">%x%
if %errorlevel% equ 0 (
goto Clean
)else goto Check
:Clean
set /p place=<%x%
if "%place%"=="" goto Check
set file=%place:~0,-21%
echo �w�����|�ö}�l�M���U���ɮ�...
for /f "tokens=3" %%i in ('dir "%file%Logs" /s^|find "%z%"') do set Total=%%i
for /f "tokens=1" %%i in ('dir "%file%Logs" /s^|find "%z%"') do set Total2=%%i
IF NOT EXIST "%file%*.log" goto skip
for /f "tokens=3" %%i in ('dir "%file%*.log"^|find "%z%"') do set brk1=%%i
for /f "tokens=1" %%i in ('dir "%file%*.log"^|find "%z%"') do set brk2=%%i
set stx1=%brk1:,=%
:skip
set /a CleanCheck=%brk2%+%total2%
if %CleanCheck%==0 goto finish
set str1=%Total:,=%
::timeout /t 1 >nul
del /f /s /q "%file%*.log"
del /f /s /q "%file%Logs\*.txt"
RD /S /Q "%file%Logs\GameLogs"
MD "%file%Logs\GameLogs"
for /f "tokens=3" %%i in ('dir "%file%Logs" /s^|find "%z%"') do set Dcheck=%%i
for /f "tokens=1" %%i in ('dir "%file%Logs" /s^|find "%z%"') do set Dcheck2=%%i
set /a Echeck=%Total2%-%Dcheck2%+%brk2%
set stg1=%Dcheck:,=%
set /a stg2=%str1%-%stg1%+%stx1%
set /a count=%stg2%/105
set str2=%count:~0,-4%
set str3=%count:~-4,2%
if %count% lss 1000 set str3=0%count:~-4,1%
if "%str2%"=="" set str2=0
echo --------------------------------------------------------------------------------
echo=
echo=
echo 	    �U���ɮײM������! �w�R���F%Echeck%%z%,�@����F%str2%.%str3%MB!
echo=
echo=
pause>nul
exit
:finish
cls
mode con cols=60 lines=13
echo=
echo=
echo=
echo=
echo 	     �z��LOL�U���ɮפw���ƲM�z�����F!
timeout /t 5 >nul
exit
::20180202 LOLCleanMasterPro v1.2.0 By BlazingZero