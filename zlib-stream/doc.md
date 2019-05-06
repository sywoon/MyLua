
# lua-zlib [src](https://github.com/brimworks/lua-zlib)

## demo
```
    local zip=require("zlib")     
    local v,mv,pv=zip.version()
    print(v .. "  " .. mv .. "  " .. pv)
    local compress=zip.deflate()
    local uncompress=zip.inflate()

    -- ѹ���ַ���  
    -- 'finish'Ϊѹ��ѡ��� "none", "sync", "full", "finish", NULL���������͡�
    local deflated, eof, bytes_in,bytes_out =compress("asdasdasdasdasdasdasdasdasd", 'finish')
    print(deflated)
    print(eof)
    print(bytes_in)
    print(bytes_out)

    -- ��ѹ�ַ���
    local uss,ret,getin,getout=uncompress(deflated)    
    print(uss)
    print(ret)
    print(getin)
    print(getout)
```


