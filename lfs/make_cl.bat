call clenv.bat

cl /c *.c /D_USING_V110_SDK71_ /I"../lib/include/"
link /dll  /def:lfs.def /out:../output/lfs.dll /LIBPATH:"../lib/" *.obj lua53.lib
del *.obj


