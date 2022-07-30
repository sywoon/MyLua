@echo off
call clenv.bat

set "lua_include=%~dp0/lib/lua5.3/include/"
set "lua_lib=%~dp0/lib/lua5.3/"
set "lua_lib_name=lua53.lib"

rmdir /Q /S output
mkdir output
mkdir bin 2>nul

::call :MAKE_LUA

call make_cl_common.bat

goto :eof


:MAKE_LUA
cd src-lua5.3.6
call make_cl.bat
cd ..

copy /Y output\\lua.exe bin
copy /Y output\\lua53.dll bin
copy /Y output\\luac.exe bin
goto :eof




