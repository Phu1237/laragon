@echo off

::change directory to root
cd ../../

::.git folder is existed
if exist .git\ (
    ::back up
    echo ^> Back up heidisql settings... > CON
    echo ^> Back up heidisql settings...
    robocopy bin/heidisql %temp%/Laragon/bin/heidisql portable_settings.txt
    echo ^> Back up user settings... > CON
    echo ^> Back up user settings...
    robocopy usr %temp%/Laragon/usr

    ::updating
    echo ^> Updating... > CON
    echo ^> Updating...
    git fetch origin
    git reset --hard origin/master
    git clean -f -d

    ::restoring
    echo ^> Restoring heidisql settings... > CON
    echo ^> Restoring heidisql settings...
    robocopy %temp%/Laragon/bin/heidisql bin/heidisql portable_settings.txt
    echo ^> Restoring user settings... > CON
    echo ^> Restoring user settings...
    robocopy %temp%/Laragon/usr usr

    ::remove backups folder
    echo ^> Removing backups folder... > CON
    echo ^> Removing backups folder...
    rmdir /Q /S %temp%\Laragon

    goto end
)

::.git folder is not existed
echo ! Not found .git folder! > CON
echo ! Not found .git folder!
goto end

:end
echo ^> Done! > CON
echo ^> Done!

timeout /t -1 > CON
exit
