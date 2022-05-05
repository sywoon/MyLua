call ../clenv.bat

mkdir ..\\output 2>NUL

cl /O2 /W3 /c /D NDEBUG /D _USING_V110_SDK71_ /D LUA_BUILD_AS_DLL -DLUA_COMPAT_5_3 *.c
del lua.obj luac.obj 
link /DLL /out:../output/lua54.dll *.obj /LIBPATH:"../lib/"

cl /O2 /W3 /c /D NDEBUG /D _USING_V110_SDK71_ /D LUA_BUILD_AS_DLL -DLUA_COMPAT_5_3 lua.c luac.c
link /out:../output/lua.exe lua.obj /LIBPATH:"../output" /LIBPATH:"../lib/" lua54.lib
del lua.obj

link /out:../output/luac.exe *.obj

del *.obj






