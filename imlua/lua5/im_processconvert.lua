-- Copy of im_convert.lua
 
function im.ProcessConvertDataTypeNew(src_image, data_type, cpx2real, gamma, absolute, cast_mode)
  local dst_image = im.ImageCreateBased(src_image, nil, nil, nil, data_type)
  return im.ProcessConvertDataType(src_image, dst_image, cpx2real, gamma, absolute, cast_mode), dst_image
end

function im.ProcessConvertColorSpaceNew(src_image, color_space, has_alpha)
  local dst_image = im.ImageCreateBased(src_image, nil, nil, color_space)
  if (has_alpha) then dst_image:AddAlpha() end
  return im.ProcessConvertColorSpace(src_image, dst_image), dst_image
end

function im.ProcessConvertToBitmapNew(src_image, color_space, has_alpha, cpx2real, gamma, absolute, cast_mode)
  if (not color_space) then color_space = im.ColorModeToBitmap(src_image:ColorSpace()) end
  local dst_image = im.ImageCreateBased(src_image, nil, nil, color_space)
  if (has_alpha) then dst_image:AddAlpha() end
  return im.ProcessConvertToBitmap(src_image, dst_image, cpx2real, gamma, absolute, cast_mode), dst_image
end
