
local CData = class("ConstraintData")


function CData:ctor(name, order, skinRequired)
    self.name = name
    self.order = order or 0
    self.skinRequired = skinRequired == nil and false or true
end


return CData
