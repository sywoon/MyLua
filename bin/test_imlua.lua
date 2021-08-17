--print(package.cpath)
--os.execute("pause")

local im = require "imlua"


function fileSize(filePath)
	local lfs = require "lfs"
	if lfs then
		local attr = lfs.attributes(filePath)
		return attr and attr.size or 0
	else
		return 0
	end
end

function getSizeDesc(size)
	local desc = ""
	if size < 1024 then
		desc = "b"  --for byte  not bit  1byte = 8bit
	else
		size = size / 1024
		if size < 1024 then
			desc = "kb"
		else
			size = size / 1024
			desc = "mb"
		end
	end
	return math.cutf(size, 2), desc
end

function getImageInfo(filePath)
	local iFile, error = im.FileOpen(filePath)
	if not iFile then
		log("[[Error:getImageInfo failed:" .. filePath, error )
		return nil
	end

	local format, compression, imageCount = iFile:GetInfo()

	local error, width, height, colorMode, dataType = 
					iFile:ReadImageInfo(imageCount -1)
	iFile:Close()
	
	local fileSize = fileSize(filePath)

	--ֻ��ʶ��24λ��png  
	--32λ��png����ͨ���ж���������alpha����255 �Ӷ�תΪ24λͼƬ
	local imgInfo = 
	{
		["error"] 	= error,
		["width"] 	= math.floor(width),
		["height"]	= math.floor(height),
		--["size"]	= math.floor(width * height * 4),  ͬimgSize
		["imgSize"]	= im.ImageDataSize(width, height, colorMode, dataType),  --�Դ��С
		["filesize"]= fileSize,  --ʵ��ռ��Ӳ�̴�С
		["filesizeDesc"]= {getSizeDesc(fileSize)},
		["format"]	= format,
		--["dataType"] = dataType,
		--["colorMode"] = colorMode,
		["alpha"]	= im.ColorModeHasAlpha(colorMode),	--�Ƿ���alpha
		["colorSpace"] = im.ColorModeSpaceName(colorMode),
		["colorDepth"] = im.ColorModeDepth(colorMode),  --���Ϊ1��png8 , 4��png32 3��jpg
	}
	
	return imgInfo
end


local info = getImageInfo("../lua.png")
print("../lua.png image info:")
table.print(info)



