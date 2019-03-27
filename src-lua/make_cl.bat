
cl /O2 /W3 /c /D_USING_V110_SDK71_ /DLUA_BUILD_AS_DLL *.c  -DLUA_COMPAT_BITLIB
del lua.obj luac.obj
link /DLL /out:../output/lua53.dll *.obj

cl /O2 /W3 /c /D_USING_V110_SDK71_ /DLUA_BUILD_AS_DLL lua.c luac.c  -DLUA_COMPAT_BITLIB
link /out:../output/lua.exe lua.obj /LIBPATH:"../output" lua53.lib
del lua.obj

link /out:../output/luac.exe *.obj

del *.obj




