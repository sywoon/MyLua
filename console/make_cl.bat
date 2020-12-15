call ../clenv.bat

mkdir ..\\output 2>NUL
mkdir ..\\output\\console 2>NUL
cl /c *.c /D NDEBUG  /D _USING_V110_SDK71_ /I"../lib/include/"
link /dll /def:console.def /out:../output/console/core.dll /LIBPATH:"../lib/" *.obj lua53.lib
del *.obj


