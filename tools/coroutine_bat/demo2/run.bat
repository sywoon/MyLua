

@echo off

set "path=%~dp0/../lua5.3/;%path%"

call runlua main.lua %*

pause





