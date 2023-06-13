
local Color = require "color"
local VAttachment = require "attachment.vertex_attachment"
local ClippingBoxAttachment = class("ClippingBoxAttachment", VAttachment)


function ClippingBoxAttachment:ctor(name)
    ClippingBoxAttachment.super.ctor(self, name)
    self.endSlot = nil  --SlotData
    self.color = Color.new(0.2275, 0.2275, 0.8078, 1);  --ce3a3aff
end

function ClippingBoxAttachment:copy()
    local copy = ClippingBoxAttachment.new(self.name)
    self:copyTo(copy)
    copy.endSlot = self.endSlot
    copy.color:setFromColor(self.color)
    return copy
end


return ClippingBoxAttachment
