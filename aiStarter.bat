@echo off

REM Start an emulator for App Inventor

REM Change current directory and drive to where this script is.
cd /d %~dp0

REM create the user directory for App Inventor
call :SetaiStarter "%ProgramFiles%"

start /b /min %AISTARTERDIR%

goto :EOF

REM ----------
:SetaiStarter
REM Sub-routine called above to set the aiStarter directory.
REM Parameter 1: The content %ProgramW6432%
REM The "%~s1" notation below converts the argument to its short form,
REM thus preventing us from having any spaces in the path used.
set AISTARTERDIR=%~s1\AppInventor\aiStarter.lnk

