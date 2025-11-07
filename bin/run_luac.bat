@echo off



set "input=%~1"
set "output=%~2"
set "show_log=%~3"

if "%show_log%" == "1" (
    echo input:%input%
    echo output:%output%
)


luac -s -o %output% %input%



