call ../clenv.bat

pushd src

mkdir "../../output"
mkdir "../../output/zlib"

cl /c /D NDEBUG /D _USING_V110_SDK71_ /I"../../lib/include/" /I"%lua_include%" *.c
link /dll  /def:luazlib.def /out:../../output/zlib/core.dll /LIBPATH:"../../lib/" /LIBPATH:"%lua_lib%" *.obj %lua_lib_name%
del *.obj

popd



