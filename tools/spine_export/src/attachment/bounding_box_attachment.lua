
local VAttachment = require "attachment.vertex_attachment"
local BoundingBoxAttachment = class("BoundingBoxAttachment", VAttachment)


function BoundingBoxAttachment:ctor(name)
    BoundingBoxAttachment.super.ctor(self, name)
end

function BoundingBoxAttachment:copy()
    local copy = BoundingBoxAttachment.new(self.name)
    self:copyTo(copy)
    copy.color:setFromColor(self.color)
    return copy
end


return BoundingBoxAttachment
