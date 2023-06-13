
local Color = require "color"
local VAttachment = require "attachment.vertex_attachment"
local BoundingBoxAttachment = class("BoundingBoxAttachment", VAttachment)


function BoundingBoxAttachment:ctor(name)
    BoundingBoxAttachment.super.ctor(self, name)
    self.color = Color.new(1, 1, 1, 1)
end

function BoundingBoxAttachment:copy()
    local copy = BoundingBoxAttachment.new(self.name)
    self:copyTo(copy)
    copy.color:setFromColor(self.color)
    return copy
end


return BoundingBoxAttachment
