-- If all parameteres, besides the image, are nil, this is equivalent to image:Clone.
-- If any parameter is not nil, then the value is used instead of the one from the source image.
-- If a parameter is a function, then the function is called, passing the source
-- image as parameter, to obtain the substituion value.

function im.ImageCreateBased(image, width, height, color_space, data_type)        
  -- default values are those of the source image                                 
  width       = width       or image:Width()                                      
  height      = height      or image:Height()                                     
  color_space = color_space or image:ColorSpace()  
  if ((color_space == im.MAP or color_space == im.BINARY) and (not data_type)) then
    data_type = im.BYTE
  else
    data_type   = data_type   or image:DataType()                                   
  end
                                                                                  
  -- callback to calculate parameters based on source image                       
  if type(width)       == "function" then       width = width(image) end        
  if type(height)      == "function" then      height = height(image) end       
  if type(color_space) == "function" then color_space = color_space(image) end  
  if type(data_type)   == "function" then   data_type = data_type(image) end    
                                                                                  
  -- create a new image                                                           
  local new_image = im.ImageCreate(width, height, color_space, data_type)
  if (new_image) then
    image:CopyAttributes(new_image)                                                 
    if (image:HasAlpha()) then new_image:AddAlpha() end
    return new_image
  else
    return nil
  end
end                                                                               

function im.ErrorStr(err)
	local msg = {}
	msg[im.ERR_OPEN] = "Error Opening File."
	msg[im.ERR_MEM] = "Insufficient memory."
	msg[im.ERR_ACCESS] = "Error Accessing File."
	msg[im.ERR_DATA] = "Image type not Supported."
	msg[im.ERR_FORMAT] = "Invalid Format."
	msg[im.ERR_COMPRESS] = "Invalid or unsupported compression."
	msg[im.ERR_NONE] = "None."
	msg[im.ERR_COUNTER] = "Counter Interrupted."
	
	if msg[err] then
		return msg[err]
	else
		return "Unknown Error."
	end
end
