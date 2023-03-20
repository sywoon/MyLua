@echo off

set "path=%~dp0;%~dp0/im/;%path%"

if "%~dp0"=="%~dp1" (
    set "luastring=require('__init'); g_initSllib({[[%~dp0]]})"
) else (
    set "luastring=require('__init'); g_initSllib({[[%~dp0]], [[%~dp1]]})"
)

::echo %*
call %~dp0\lua -e "%luastring%" %~1 %~2 %~3 %~4 %~5 %~6 %~7 %~8 %~9

