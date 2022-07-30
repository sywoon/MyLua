@echo off

set "title_name=client"
$Host.UI.RawUI.WindowTitle = %title_name% 2>nul
TITLE %title_name% 2>nul

set "path=%~dp0/../../../bin;%path%"

call runlua.bat client.lua



pause