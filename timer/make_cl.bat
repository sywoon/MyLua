call clenv.bat

mkdir %~dp0..\output\timer
cl /c *.c /D DLL_EXPORT /D NDEBUG  /D _USING_V110_SDK71_ /I"../lib/include/"
link /dll /out:../output/timer/core.dll /LIBPATH:"../lib/" *.obj lua53.lib User32.lib

del *.obj


