
local VAttachment = require "attachment.vertex_attachment"
local PathAttachment = class("PathAttachment", VAttachment)


function PathAttachment:ctor(name)
    PathAttachment.super.ctor(self, name)
    self.lengths = {}  --Array<number>
    self.closed = false
    self.constantSpeed = false
    self.color = Color.new(1, 1, 1, 1)
end

function PathAttachment:copy()
    local copy = PathAttachment.new(self.name)
    self:copyTo(copy)
    copy.lengths = table.clone(self.lengths)
    copy.closed = self.closed
    copy.constantSpeed = self.constantSpeed
    copy.color:setFromColor(self.color)
    return copy
end



return PathAttachment