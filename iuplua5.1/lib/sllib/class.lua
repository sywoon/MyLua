------------------------
-- 简单的类
-- 支持：继承subclass 创建实例new 初始化函数initialize
--		调用父类函数self:super():xxxxxx(...)
--		dispose需要继承类自己在合适地方调用(非必须)
--
-- create by songyw 17.3.31
------------------------
local M = {}
Class = M

local BaseClass = {}
Class.__parent = BaseClass

local function submeta(self)
	self.__index = self
	return setmetatable({}, self)
end

function M:new(...)
	local t = submeta(self)
	t:initialize(...)
	return t
end

function M:initialize(...)
end

function M:dispose()
end

function M:subclass()
	local t = submeta(self)
	t.__parent = self
	return t
end

function M:super()
	return self.__parent
end
