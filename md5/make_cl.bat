call ../clenv.bat

pushd src

mkdir "../../output"
mkdir "../../output/md5"

:: md5
cl /c /D NDEBUG /D _USING_V110_SDK71_ /I"../../lib/include/" /I"%lua_include%" md5.c md5lib.c
link /dll  /def:md5.def /out:../../output/md5/core.dll /LIBPATH:"../../lib/" /LIBPATH:"%lua_lib%" *.obj %lua_lib_name%
del *.obj


:: des56
cl /c /D NDEBUG /D _USING_V110_SDK71_ /I"../../lib/include/" /I"%lua_include%" des56.c ldes56.c
link /dll  /def:des56.def /out:../../output/des56.dll /LIBPATH:"../../lib/" /LIBPATH:"%lua_lib%" *.obj %lua_lib_name%
del *.obj

popd

