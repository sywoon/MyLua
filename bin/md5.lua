local md5 = require "md5.core"


function md5.sumhexa(k)
  k = md5.sum(k)
  return (string.gsub(k, ".", function (c)
           return string.format("%02x", string.byte(c))
         end))
end


return md5