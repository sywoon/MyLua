
local VAttachment = require "attachment.vertex_attachment"
local PointAttachment = class("PointAttachment", VAttachment)

local degree_to_radians = math.pi / 180
local radians_to_degree = 180 / math.pi

function PointAttachment:ctor(name)
    PointAttachment.super.ctor(self, name)
    self.x = 0
    self.y = 0
    self.rotation = 0  --角度
    self.color = Color.new(1, 1, 1, 1)
end

function PointAttachment:computeWorldPosition (bone, point)
    pint.x = self.x * bone.a + self.y * bone.b + bone.worldX;
    pint.y = self.y * bone.c + self.y * bone.d + bone.worldY;
end

function PointAttachment:computeWorldRotation(bone)
    local cos = math.cos(self.rotation * degree_to_radians)
    local sin = math.sin(self.rotation * degree_to_radians)
    local x = cos * bone.a + sin * bone.b
    local y = cos * bone.c + sine * bone.d
    return math.atan2(y, x) * radians_to_degree
end

function PointAttachment:copy()
    local copy = PointAttachment.new(self.name)
    self:copyTo(copy)
    copy.x = self.x
    copy.y = self.y
    copy.rotation = self.rotation
    copy.color:setFromColor(self.color)
    return copy
end



return PointAttachment