@echo off
call clenv.bat


rmdir bin
mkdir bin
cd src-lua
cl /O2 /W3 /c /D_USING_V110_SDK71_ /DLUA_BUILD_AS_DLL *.c  -DLUA_COMPAT_BITLIB
del lua.obj luac.obj
link /DLL /out:../bin/lua53.dll *.obj

cl /O2 /W3 /c /D_USING_V110_SDK71_ /DLUA_BUILD_AS_DLL lua.c luac.c  -DLUA_COMPAT_BITLIB
link /out:../bin/lua.exe lua.obj /LIBPATH:"../bin" lua53.lib
del lua.obj

link /out:../bin/luac.exe *.obj

del *.obj
cd ..

pause



