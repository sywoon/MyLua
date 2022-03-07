call clenv.bat

mkdir %~dp0..\output\
cl /c *.c /D DLL_EXPORT /D NDEBUG  /D _USING_V110_SDK71_ /I"../lib/include/"
link /dll /out:../output/ctimer.dll /LIBPATH:"../lib/" *.obj lua53.lib User32.lib

del *.obj


