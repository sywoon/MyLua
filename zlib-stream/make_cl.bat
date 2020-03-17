call ../clenv.bat

pushd src

mkdir "../../output"
mkdir "../../output/zlibstream"

cl /c /D NDEBUG /D _USING_V110_SDK71_ /I"../../lib/include/" *.c
link /dll  /def:lua_zlib.def /out:../../output/zlibstream/core.dll /LIBPATH:"../../lib/" *.obj lua53.lib
del *.obj

popd



