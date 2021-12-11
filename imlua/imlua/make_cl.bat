call clenv.bat

cl /c *.c /D NDEBUG  /D _USING_V110_SDK71_ /I"../../lib/include/" /I"../../zlib/src/"


link /dll /NODEFAULTLIB:libcmtd /def:imlua.def /out:../../output/imlua.dll /LIBPATH:"../../lib/" /LIBPATH:"../../zlib/src/" *.obj lua53.lib im.lib zlib1.lib
del *.obj
pause


