call ../clenv.bat

pushd luacrc32-master

mkdir "../../output"
mkdir "../../output/crc32"

:: crc32
cl /c /D NDEBUG /D _USING_V110_SDK71_ /I"../../lib/include/" crc32.c wrap.c
link /dll  /def:crc32.def /out:../../output/crc32/core.dll /LIBPATH:"../../lib/" *.obj lua53.lib
del *.obj


popd

