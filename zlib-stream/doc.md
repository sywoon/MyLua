
# lua-zlib [src](https://github.com/brimworks/lua-zlib)

## demo
```
    local zip=require("zlib")     
    local v,mv,pv=zip.version()
    print(v .. "  " .. mv .. "  " .. pv)
    local compress=zip.deflate()
    local uncompress=zip.inflate()

    -- 压缩字符串  
    -- 'finish'为压缩选项，有 "none", "sync", "full", "finish", NULL，几种类型。
    local deflated, eof, bytes_in,bytes_out =compress("asdasdasdasdasdasdasdasdasd", 'finish')
    print(deflated)
    print(eof)
    print(bytes_in)
    print(bytes_out)

    -- 解压字符串
    local uss,ret,getin,getout=uncompress(deflated)    
    print(uss)
    print(ret)
    print(getin)
    print(getout)
```


