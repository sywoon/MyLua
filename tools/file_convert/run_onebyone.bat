@echo off

call D:\Github\MyLua\bin\runlua.bat main_onebyone.lua a2u main_ansi.cpp output_a2u.cpp
call D:\Github\MyLua\bin\runlua.bat main_onebyone.lua u2a main_utf8.cpp output_u2a.cpp

pause
