
:: -q	quiet，静音模式，抑制文件添加时的输出
:: -qq	更静音，只输出错误信息，完全抑制成功日志
:: -v	verbose，详细模式（默认会显示添加的文件）
::zip [选项] archive.zip files... -x 排除模式1 排除模式2 ...
::zip -r my.zip ./project -x "*.log" "temp/*" "build/*"
:: 注意：排除要放末尾
:: local cmd2 = _F('zip -r -9 -q %s %s -x *.meta *.ab *.zip', zipName, ".")


::指定文件列表
::  my_folder/a.txt
::  my_folder/d.png
zip test_zip0.zip -@ < filelist.txt


::压缩多个文件到.zip 指定文件
zip test_zip1.zip zlib.lua zlib_stream.lua

::递归压缩整个文件夹
zip -r test_zip2.zip json_internal/ socket/

::不保留路径结构（just file）
zip -j test_zip3.zip json_internal/dkjson.lua json_internal/rxijson.lua

::最大压缩率（-1 到 -9，数字越大压缩越慢）
zip -9 test_zip4.zip zlib.lua zlib_stream.lua

pause
::从 zip 中删除指定文件
zip -d test_zip1.zip zlib.lua

::压缩后删除源文件（move）
::zip -m foo.zip a.txt

::设置密码保护  会提示输入密码 老式的 ZipCrypto 安全性较低
::交互式密码输入 只能手动
::可用7zip的7z命令代替：7z a -tzip -pYourPassword -mem=AES256 secret.zip diary.txt
zip -e test_zip5.zip zlib.lua zlib_stream.lua



pause









