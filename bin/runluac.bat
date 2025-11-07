@echo off



set "input=%~1"
if "%~2" == "" (
    set "output=%~1"
) else (
    set "output=%~2"
)


if "%show_log%" == "1" (
    echo input:%input%
    echo output:%output%
)


luac -s -o %output% %input%



