call ../clenv.bat

pushd src

mkdir "../../output"
mkdir "../../output/xlsEdit"

cl /c /D NDEBUG /D _USING_V110_SDK71_ /I"../../lib/include/" *.cpp
link /dll  /def:xlsEdit.def /out:../../output/xlsEdit.dll /LIBPATH:"../../lib/" *.obj lua53.lib libxl.lib
del *.obj

popd



