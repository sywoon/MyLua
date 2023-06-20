@echo off

if "%~1" == "" (
	echo please input file
	goto End
)

echo %1
lua -v
echo -------------------------------------------------------------------
set "TYPE=none"

echo %1 | find ".js">nul && set "TYPE=js"
echo %1 | find ".mjs">nul && set "TYPE=mjs"
echo %1 | find ".lua">nul && set "TYPE=lua"
echo %1 | find ".wlua">nul && set "TYPE=wlua"
echo %1 | find ".coffee">nul && set "TYPE=coffee"
echo %1 | find ".ts">nul && set "TYPE=ts"

setlocal enabledelayedexpansion

if "%TYPE%" == "lua" (
    ::use lua5.3
    if exist "%~dp0..\..\bin\runlua.bat" (
        set "path=%~dp0..\..\bin;%path%"
        pushd %~dp1
        call runlua.bat %1
        popd
        goto End
    )
    
	if "%LUA_PATH%" == "" (
		if exist "c:\Program Files (x86)\Lua\5.1\" (
			 set "LUA_INSTALL=c:\Program Files (x86)\Lua\5.1\"
		) else (
			if exist "d:\Program Files (x86)\Lua\5.1\" (
				set "LUA_INSTALL=d:\Program Files (x86)\Lua\5.1\"
			)
		)
		
		set "LIS=!LUA_INSTALL!"
		set "LUA_PATH=./?;./?.lua;?/init.lua;!LIS!lua\?.lua;!LIS!lua\?\init.lua;!LIS!?.lua;!LIS!?\init.lua;!LIS!lua\?.luac;!LIS!clibs;!LIS!lua\?\?.lua;"
	)

	set "LUA_PATH=%~dp0?;%~dp0?.lua;%~dp0?/init.lua;%~dp0?.luac;%~dp1?;%~dp1?.lua;%~dp1?/init.lua;%~dp1?.luac;!LUA_PATH!;"
)

::echo %~dp1
pushd %~dp1


if "%TYPE%" == "lua" (
	set LUA="lua"
	if exist "%~dp1\lua.exe" (
        set LUA="%~dp1\lua"
        set "path=%~dp1;%~dp1/im/;%path%"
    )

	set "luastring=require('__init'); g_initSllib({[[%~dp0]], [[%~dp1]]})"
	!LUA! -e "!luastring!" %~nx1
	goto End
)

if "%TYPE%" == "wlua" (
	set LUA="wlua"
	if exist "%~dp1\wlua.exe" set LUA="%~dp1\wlua"

	set "luastring=require('sllib'); g_initSllib([[%~dp0]]); g_initSllib([[%~dp1]])"
	!LUA! -e "!luastring!" %~nx1
	goto End
)

if "%TYPE%" == "js" (
	node %~nx1
	goto End
)

if "%TYPE%" == "mjs" (
	node --experimental-modules %~nx1
	goto End
)

if "%TYPE%" == "ts" (
	call ts-node -P %~dp0tsconfig.json %~nx1
	goto End
)

if "%TYPE%" == "coffee" (
	echo - - - - - - - - -js src begin- - - - - - - - -
	call coffee -bp %~nx1
	echo - - - - - - - - -js src end- - - - - - - - - -

	call coffee %~nx1
	goto End
)

popd

:End
pause
exit
