@echo off


if "%~dp0"=="%~dp1" (
    set "luastring=require('__init'); g_initSllib({[[%~dp0]]})"
) else (
    set "luastring=require('__init'); g_initSllib({[[%~dp0]], [[%~dp1]]})"
)

call %~dp0\lua -e "%luastring%" %~nx1

