require "sllib_base"

local from = "test_jscompress.js"
do
    local to = "test_jscompress_jsmin.js"
    local envPath = "c:/cinside/env/"
    print("jsmin", from, to, envPath)
    jscompress:jsmin(from, to, envPath)
end

do
    local to = "test_jscompress_terser.js"
    print("terser", from, to)
    jscompress:jsmin(from, to)
end

do
    local to = "test_jscompress_obfuscator1.js.ts"
    print("obfuscator1", from, to)
    jscompress:encode(from, to, nil, 1)
    
    local to = "test_jscompress_obfuscator2.js"
    print("obfuscator1", from, to)
    jscompress:encode(from, to, nil, 2)
    
    local to = "test_jscompress_obfuscator3.js"
    print("obfuscator1", from, to)
    jscompress:encode(from, to, nil, 3)
end




