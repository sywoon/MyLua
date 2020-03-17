@echo off

rmdir /Q /S output
mkdir output
call D:\Github\MyLua\bin\runlua.bat main_path.lua src a2u output

pause
