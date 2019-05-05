require "sllib_base"
local zlib = require "zlib.core"


function zlib.compressFile(inpath, outpath)
	local data = io.readFile(inpath, "rb")
	if data == nil then
		return false, "read file error:" .. inpath
	end

	local dest, errMsg = zlib.compress(data)
	if nil == dest then
		return false, errMsg
	end

	return io.writeFile(outpath, dest, "wb")
end

function zlib.uncompressFile(inpath, outpath)
	local data = io.readFile(inpath, "rb")
	if data == nil then
		return false, "read file error:" .. inpath
	end

	local dest, errMsg = zlib.uncompress(data)
	if nil == dest then
		return false, errMsg
	end

	return io.writeFile(outpath, dest, "wb")
end

function zlib.uncompressGZipFile(inpath, outpath)
	local data = io.readFile(inpath, "rb")
	if data == nil then
		return false, "read file error:" .. inpath
	end

	local dest, errMsg = zlib.gzuncompress(data)
	if nil == dest then
		return false, errMsg
	end

	return io.writeFile(outpath, dest, "wb")
end


return zlib
