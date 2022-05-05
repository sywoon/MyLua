call ../clenv.bat

mkdir ..\\output 2>NUL
mkdir ..\\output\\console 2>NUL

cl /c *.c /D NDEBUG  /D _USING_V110_SDK71_ /I"../lib/include/" /I"%lua_include%"
link /dll /def:console.def /out:../output/console/core.dll /LIBPATH:"../lib/" /LIBPATH:"%lua_lib%" *.obj %lua_lib_name%
del *.obj


