@echo off

cls
pushd src
call %~dp0..\..\bin\runlua.bat main.lua %~dp0 %~dp0/res/
popd

pause
