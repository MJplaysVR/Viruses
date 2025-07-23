@echo off

:start
cls
echo caveon
echo .
echo .
set /p ip="device ip addres: "

:check
ping %ip% -n 2 > nul
if %errorlevel% EQU 0 color a
if %errorlevel% EQU 0 echo online
if %errorlevel% EQU 1 color c
if %errorlevel% EQU 1 echo offline
echo anything else (Y/N)
set /p y="Y/N "
if %y% EQU Y goto start
