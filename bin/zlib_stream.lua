require "sllib_base"
local zlibstream = require "zlibstream.core"


function zlibstream.compressFile(inpath, outpath)
	local data = io.readFile(inpath, "rb")
	if data == nil then
		return false, "read file error:" .. inpath
	end

	local compress = zlibstream.deflate()
	-- 'finish'为压缩选项，有 "none", "sync", "full", "finish", NULL
	local dest = compress(data, "finish")
	if nil == dest then
		return false, "compress failed"
	end

	return io.writeFile(outpath, dest, "wb")
end

function zlibstream.uncompressFile(inpath, outpath)
	local data = io.readFile(inpath, "rb")
	if data == nil then
		return false, "read file error:" .. inpath
	end

	local uncompress = zlibstream.inflate()
	local dest = uncompress(data)
	if nil == dest then
		return false, "uncompress failed"
	end

	return io.writeFile(outpath, dest, "wb")
end


return zlibstream
