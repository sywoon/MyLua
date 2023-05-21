local extpath = ""
for _, path in ipairs({
            "src/Lib",
            "src/UI",
            "src/Module",
            }) do
    local str = string.gsub(";#/?;#/?.lua;#/?/init.lua;#/?.luac", "#", path)
    extpath = extpath .. str
end
package.path = package.path .. extpath

require "iuplua"
require "iupluacontrols"
require "iupmisc"
require "tools"
SizeAssist = require "SizeAssist"

local MainUI = require "MainUI"

local dbPath = arg[1]
app = {}

function app:init()
	self.mainUI = MainUI:new(dbPath)
end

function app:run()
	self.mainUI:run()
end

app:init()
app:run()