call clenv.bat

cl /c *.c /D NDEBUG /D _USING_V110_SDK71_ /I"../lib/include/" /I"%lua_include%"
link /dll  /def:lfs.def /out:../output/lfs.dll /LIBPATH:"../lib/" /LIBPATH:"%lua_lib%" *.obj %lua_lib_name%
del *.obj


