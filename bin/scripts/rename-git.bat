@echo off

::change directory to root
cd ../../

::.git
echo Finding .git folder... > CON
echo Finding .git folder...
if exist .git\ (
    echo Found! > CON
    echo Found!

    echo Unhide .git folder
    attrib -H .git

    echo Rename folder .git to .git.saved... > CON
    echo Rename folder .git to .git.saved...
    ren .git .git.saved
    if ERRORLEVEL 1 (
        echo Rename failed! > CON
        echo Rename failed!
        echo Please turn off your IDE or turn off the file exploder that is opening .git folder! > CON
        echo Please turn off your IDE or turn off the file exploder that is opening .git folder!
        echo Hide .git folder
        attrib +H .git
    )
    if ERRORLEVEL 0 (
        echo Hide .git.saved folder
        attrib +H .git.saved
    )
    goto end
)
echo Not found! > CON
echo Not found!
echo. > CON
echo.

::.git.saved
echo Finding .git.saved folder... > CON
echo Finding .git.saved folder...
if exist .git.saved\ (
    echo Found! > CON
    echo Found!
    echo Unhide .git.saved folder
    attrib -H .git.saved
    echo Rename folder .git.saved to .git... > CON
    echo Rename folder .git.saved to .git...
    ren .git.saved .git
    if ERRORLEVEL 1 (
        echo Rename failed! > CON
        echo Rename failed!
        echo Please turn off your IDE or turn off the file exploder that is opening .git.saved folder! > CON
        echo Please turn off your IDE or turn off the file exploder that is opening .git.saved folder!
        attrib +H .git.saved
    )
    if ERRORLEVEL 0 (
        echo Hide .git folder
        attrib +H .git
    )
    goto end
)
echo Not found! > CON
echo Not found!

:end
echo Done! > CON
echo Done!

timeout /t -1 > CON
exit
