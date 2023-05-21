local Pool = require "DataPool"

local STATE = 
{
	["PRESS"] = 1,
	["RELEASE"] = 0,
}

local CELL_MINSIZE = 
{
	["WIDTH"] = 80,
	["HEIGHT"] = 15,
}

local WIN_SIZE = 
{
	["WIDTH"] = 1000,
	["HEIGHT"] = 400,
}

local DEFAULT_FONT = 12


local M = Class:subclass()

function M:initialize(dbPath)
	self.pool = Pool:create(dbPath)
	self:createUI()
	self:initData()
end

function M:createUI()
	self:createList()
	self:createRightUI()

	self:createMainDlg()
end

function M:createToolBar()
	local onBtnCall = bind(self.onBtnCall, self)
	local toolFrame = iup.frame
	{
		iup.hbox
		{
			iup.button{title="ExcelExport", size="60x20", id="btn1",
						action = onBtnCall},
			iup.button{title="btn", size="60x20", id="btn2",
						action = onBtnCall},
			margin = "2x2",
			gap = 10,
		}
	}
	self.toolBar = iup.hbox{iup.fill{}, toolFrame, iup.fill{}}
end

function M:onBtnCall(sender)
	local id = sender.id
	if id == "btn1" then
		local path = "../ExcelExport/"
		local execute = "call make.bat"
		otherDirExecute(path, execute)
	end
end

function M:createList()
	local list = iup.list{spacing = 2}
	self.list = list

	local names = self.pool:getNames()
	for k, name in ipairs(names) do
		list[k] = name
	end

	list.action = bind(self.listAction, self)
end

function M:listAction(_, text, item, state)
	if state == STATE.PRESS then
		self:refreshUIByName(text)
	end
end

function M:refreshUIByName(name)
	local dbTable = self.pool:getDbByName(name)
	self.head = dbTable.head
	self.data = dbTable.data

	self:refreshMatrix()
	self:cellFitSize(dbTable)
end

function M:initData()
	local names = self.pool:getNames()
	local fName = names[1]
	self:refreshUIByName(fName)
end

function M:refreshMatrix()
	local mat = self.mat
	mat.numlin = #self.data
	mat.numcol = #self.head

	for k, head in ipairs(self.head) do
		self.mat:setcell(0, k, head)
	end

	for l = 1, #self.data do
		self.mat:setcell(l, 0, l)
	end

	for l, lData in ipairs(self.data) do
		for c, info in ipairs(lData) do
			self.mat:setcell(l, c, info)
		end
	end
end

function M:cellFitSize(t)
	local assist = SizeAssist:create(t, self.mat.fontSize)
	local widA = assist:getWidthArr()
	local heiA = assist:getHeightArr()

	self:cellSetWidth(widA)
	self:cellSetHeight(heiA)
end

function M:cellSetWidth(arr)
	local mat = self.mat
	for k, v in ipairs(arr) do
		local name = "rasterwidth" .. tostring(k)
		if v > CELL_MINSIZE.WIDTH then
			mat[name] = v
		else 
			mat[name] = CELL_MINSIZE.WIDTH
		end
	end
end

function M:cellSetHeight(arr)
	local mat = self.mat
	for k, v in ipairs(arr) do
		local name = "rasterheight" .. tostring(k)
		if v > CELL_MINSIZE.HEIGHT then
			mat[name] = v
		else
			mat[name] = CELL_MINSIZE.HEIGHT
		end
	end
end

function M:createRightUI()
	self:createToolBar()

	local mat = iup.matrix{resizematrix = "YES"}
	mat.font = "x, " .. DEFAULT_FONT
	self.mat = mat

	self.rigFrm = iup.frame{iup.vbox{self.toolBar, mat},
								margin = "5x5", gap = "5"}
end

function M:createMainDlg()
	self.dlg = iup.dialog{
					iup.hbox{self.list, self.rigFrm};
					size = WIN_SIZE.WIDTH .. "x" .. WIN_SIZE.HEIGHT,
				}
end

function M:run()
	self.dlg:showxy(iup.CENTER, iup.CENTER)
	iup.MainLoop()
end

return M