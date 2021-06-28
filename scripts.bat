@echo off
cd ./bin/scripts

:begin
echo ========================================================================================================================
echo =======                                             LARAGON SCRIPTS                                              =======
echo ========================================================================================================================
echo 1. Rename folder .git to .git.saved - Rename folder .git.saved to .git
echo 2. Update Laragon
echo 0. Exit
SET /P option=Your option: 
echo ========================================================================================================================
echo Running...

if %option% == 0 goto 0
if %option% == 1 goto 1
if %option% == 2 goto 2

:back
cls
goto begin

:0
timeout /t -1

:1
start /wait "Running" rename-git.bat ^> ../../tmp/rename-git_logs.txt ^2^>^&^1
goto back

:2
start /wait "Running" update.bat ^> ../../tmp/update_logs.txt ^2^>^&^1
goto back
