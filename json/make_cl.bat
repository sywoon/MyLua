call ../clenv.bat

pushd src

mkdir "../../output"

cl /c /D NDEBUG /D _USING_V110_SDK71_ /I"../../lib/include/" *.c
link /dll  /def:lua_cjson.def /out:../../output/cjson.dll /LIBPATH:"../../lib/" *.obj lua53.lib
del *.obj

popd

