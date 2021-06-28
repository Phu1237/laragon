@echo off
::create scripts logs folder if not exists
if not exist tmp\scripts\ (
    mkdir tmp\scripts
)
::change directory
cd ./bin/scripts

:begin
echo ========================================================================================================================
echo =======                                             LARAGON SCRIPTS                                              =======
echo ========================================================================================================================
echo 1.   Rename folder .git to .git.saved - Rename folder .git.saved to .git
echo 2.   Update Laragon
echo 0.   Exit
echo l00. Go to logs folder
echo.
SET /P option=">> Your option: "
echo ========================================================================================================================
echo Running...

if %option% == 0 goto 0
if %option% == 1 goto 1
if %option% == 2 goto 2
if %option% == 100 goto logs

:back
cls
goto begin

:logs
start ..\..\tmp\scripts
goto back

:0
timeout /t -1

:1
start /wait "Running" rename-git.bat ^> ../../tmp/scripts/rename-git_logs.txt ^2^>^&^1
goto back

:2
start /wait "Running" update.bat ^> ../../tmp/scripts/update_logs.txt ^2^>^&^1
goto back
