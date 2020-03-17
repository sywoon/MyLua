call clenv.bat

mkdir ..\\output 2>NUL
cl /c *.c /D NDEBUG  /D _USING_V110_SDK71_ /I"../lib/include/"
link /dll  /def:charset.def /out:../output/charset.dll /LIBPATH:"../lib/" *.obj lua53.lib
del *.obj


