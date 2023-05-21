module (..., package.seeall)

local DB_LIST_FILE = "db.lst"

class = objectlua.Object:subclass()

function create(_, path)
	local dbPool = class:new(path)
	if not dbPool then
		return
	end
	return dbPool
end

function class:initialize(path)
	self.db = {}
	self.path = path
	local names = getTableByFile(path .. "/" .. DB_LIST_FILE)
	names = table.sort(names)
	self.names = names
	
	self:saveDbToPool(names)
end

function class:getDbNames(path)
	return self.names
end

function class:saveDbToPool(names)
	for _, name in pairs(names) do

		local dbPath = self.path .. "\\" .. name .. ".db"
		local t = getTableByFile(dbPath)
		self.db[name] = t
	end
end

function class:getDbByName(name)
	return self.db[name]
end

function class:getNames()
	return self.names
end