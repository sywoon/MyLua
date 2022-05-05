call clenv.bat

mkdir %~dp0..\output\
cl /c *.c /D DLL_EXPORT /D NDEBUG  /D _USING_V110_SDK71_ /I"../lib/include/" /I"%lua_include%"
link /dll /out:../output/ctimer.dll /LIBPATH:"../lib/" /LIBPATH:"%lua_lib%" *.obj %lua_lib_name% User32.lib

del *.obj


