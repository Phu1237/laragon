@echo off

::change directory to root
cd ../../

::.git
echo Finding .git folder... > CON
echo Finding .git folder...
if exist .git\ (
    echo Found! > CON
    echo Found!
    echo Rename folder .git to .git.saved... > CON
    echo Rename folder .git to .git.saved...
    attrib -H .git
    ren .git .git.saved
    attrib +H .git.saved
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
    echo Rename folder .git.saved to .git... > CON
    echo Rename folder .git.saved to .git...
    attrib -H .git.saved
    ren .git.saved .git
    attrib +H .git
    goto end
)
echo Not found! > CON
echo Not found!

:end
echo Done! > CON
echo Done!

timeout /t -1 > CON
exit
