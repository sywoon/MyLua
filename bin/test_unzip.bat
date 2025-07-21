
::解压到当前目录 若已存在会提示：覆盖 取消 重命名
unzip test_zip1.zip

::解压到指定目录 ./output  会自动创建目录
unzip test_zip1.zip -d ./output

::列出压缩包中的文件列表（不解压）
unzip -l test_zip2.zip

::解压并自动覆盖已存在文件
unzip -o test_zip2.zip

::解压但跳过已存在文件
unzip -n test_zip2.zip

::静默解压（不输出文件名） 若已存在会提示：覆盖 取消 重命名
unzip -q test_zip2.zip

::只解压部分文件  若已存在会提示：覆盖 取消 重命名
unzip test_zip3.zip dkjson.lua

::解压加密 zip（ZipCrypto） 若已存在会提示：覆盖 取消 重命名
unzip -P 123 test_zip5.zip


pause









