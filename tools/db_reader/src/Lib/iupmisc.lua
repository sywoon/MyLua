iup.getHeight = function (s)
	local _, _, h = string.find(s, "x(%d+)")
	return h
end

local old = iup.list
iup.list = function (...)
	local list = old(...)
	local pDia = nil

	list.map_cb = function ()
		pDia = iup.GetDialog(list)

		pDia.resize_cb = function ()
			local cSize = pDia.clientsize
			local h = iup.getHeight(cSize)
			list.rastersize = "x" .. h
		end
	end

	return list
end