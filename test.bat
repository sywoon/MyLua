
call clenv.bat

@echo on
set "lua_include=%~dp0/lib/lua5.4/include/"
set "lua_lib=%~dp0/lib/lua5.4/"
set "lua_lib_name=lua54.lib"

cd cjson
call make_cl

pause
