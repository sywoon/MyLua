

::压缩多个文件到.zip
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









