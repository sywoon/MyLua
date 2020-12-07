

@echo off

set "path=%~dp0/../lua5.3/;%path%"

set "from=%1"
set "to=%2"
:: 1:left changed 2:left changed + left new  3:mirror 4:mirror+keep_right_new
set "mode=%3"

call runlua main.lua "%from%" "%to%" %mode%

pause





