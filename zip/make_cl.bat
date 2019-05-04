call ../clenv.bat

pushd src

mkdir "../../output"
mkdir "../../output/zlib"

cl /c /D NDEBUG /D _USING_V110_SDK71_ /I"../../lib/include/" *.c
link /dll  /def:luazlib.def /out:../../output/zlib.dll /LIBPATH:"../../lib/" *.obj lua53.lib
del *.obj

popd


pause

