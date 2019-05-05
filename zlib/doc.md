

# luazlib
require "zlib"

* zlib.compress(src)
```
  success:
	return: dest, destLen

  error:
    return: nil, errMsg
		"not enough memory"  "output buffer error"
```

* zlib.uncompress(src)
```
  success:
	return: dest, destLen

  error:
    return: nil, errMsg
		"not enough memory"  "output buffer error" "input data corrupted"
```

* zlib.gzuncompress(src)
```
  同uncompress(src)
```


