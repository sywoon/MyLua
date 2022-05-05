call clenv.bat

mkdir ..\\output 2>NUL

cl /c *.c /D NDEBUG  /D _USING_V110_SDK71_ /I"../lib/include/" /I"%lua_include%"
link /dll  /def:charset.def /out:../output/charset.dll /LIBPATH:"../lib/" /LIBPATH:"%lua_lib%" *.obj %lua_lib_name%
del *.obj


