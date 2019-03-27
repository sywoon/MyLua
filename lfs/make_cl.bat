call clenv.bat

cl /c *.c /D NDEBUG /D _USING_V110_SDK71_ /I"../lib/include/"
link /dll  /def:lfs.def /out:../output/lfs.dll /LIBPATH:"../lib/" *.obj lua53.lib
del *.obj


