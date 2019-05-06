local md5 = require "md5.core"


function md5.sumhexa(k)
  k = md5.sum(k)
  return (string.gsub(k, ".", function (c)
           return string.format("%02x", string.byte(c))
         end))
end

function md5.sumFile(filepath)
	local data = io.readFile(filepath, "rb")
	if data == nil then
		return nil, "read file error:" .. filepath
	end
	return md5.sumhexa(data)
end


return md5
