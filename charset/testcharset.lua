local cs = require "charset"

for k, v in pairs(cs) do
    print(k, v)
end

local t = {
    "abc",
    "ÄãºÃ",
    "aÄãºÃb",
}
for _, v in ipairs(t) do
    print("ansi", v, string.len(v))
    
    local s = cs.a2w(v)
    print("unicode", s, string.len(s))
    
    s = cs.w2a(s)
    print("u2a", s, string.len(s))
    
    s = cs.a2u(s)
    print("utf8", s, string.len(s))
    
    s = cs.u2a(s)
    print("u2a", s, string.len(s))
    
    print("------------------")
    print("\n")
end



