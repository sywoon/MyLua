call clenv.bat

cl /c *.c /D NDEBUG /D _USING_V110_SDK71_ /I"../lib/include/"
link /dll /def:lpeg.def /out:../output/lpeg.dll /LIBPATH:"../lib/" *.obj lua53.lib
del *.obj



