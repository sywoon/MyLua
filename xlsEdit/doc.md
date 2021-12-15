

# xlsEdit
xlsEdit = require "xlsEdit"

* book = xlsEdit.create()
```
  返回一个WorkBook对象
```

* book:open(path)
```
  打开一个xlsx文件，path需要是utf-8字符串

  成功返回true, 出错返回false
```

* book:getSheet(idx)
```
  获取index为idx的sheet

  成功返回true, 出错返回false
```

* book:readStr(row, col)
```
  读取单元格(row, col)的数据，如果单元格里的不是字符串类型可能会返回nil,需要用到别的类型的时候再扩

  成功返回utf8字符串, 空单元格或出错返回nil
```

* book:writeStr(row, col, data)
```
  将data写入单元格(row, col)

  成功返回true, 出错返回false
```

* book:save(path)
```
  保存文件到path, path需要是utf8字符串

  成功返回true, 出错返回false
```

* book:getLastRow()
```
  返回当前sheet最后一行的idx
```

* book:getErrorMsg()
```
  上面操作出错时调用，返回错误信息
```