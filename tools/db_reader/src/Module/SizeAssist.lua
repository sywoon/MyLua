module (..., package.seeall)

class = objectlua.Object:subclass()

function create(_, data, font)
	local assist = class:new(data, font)
	if not assist then
		return 
	end
	return assist
end

function class:initialize(t, font)
	self.data = t.data
	self.head = t.head
	self.font = tonumber(font)

	self.widArr = {}
	self.heiArr = {}

	for i = 1, #self.head do
		self.widArr[i] = 0
	end

	for i = 1, #self.data do
		self.heiArr[i] = 0
	end

	self:calculate()
end

function class:calculate()
	for l, lData in ipairs(self.data) do
		for c, info in ipairs(lData) do
			local width, height = calcuFitSize(tostring(info), self.font)
			if width > self.widArr[c] then
				self.widArr[c] = width
			end

			if height > self.heiArr[l] then
				self.heiArr[l] = height
			end
		end
	end
end

function class:getWidthArr()
	return self.widArr
end

function class:getHeightArr()
	return self.heiArr
end