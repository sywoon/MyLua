
local Attachment = require "attachment.attachment"
local RegionAttachment = class("RegionAttachment", Attachment)

local OX1, OY1, OX2, OY2, OX3, OY3, OX4, OY4 = 0, 1, 2, 3, 4, 5, 6, 7
local X1, Y1, C1R, C1G, C1B, C1A, U1, V1 = 0, 1, 2, 3, 4, 5, 6, 7

local X2, Y2, C2R , C2G , C2B , C2A , U2 , V2 = 8, 9, 10, 11, 12, 13, 14, 15
local X3, Y3, C3R, C3G, C3B, C3A, U3, V3 = 16, 17, 18, 19, 20, 21, 22, 23
local X4, Y4, C4R, C4G, C4B, C4A, U4, V4 = 24, 25, 26, 27, 28, 29, 30, 31


function RegionAttachment:ctor(name)
    RegionAttachment.super.ctor(self, name)
    self.x = 0
    self.y = 0
    self.scaleX = 1
    self.scaleY = 1
    self.rotation = 0
    self.width = 0
    self.height = 0
    self.color = Color.new(1, 1, 1, 1)
    self.path = ""
    self.rendererObject = nil
    self.region = nil  --TextureRegion
    self.offset = {}  --FloatArray(8)
    self.uvs = {}  --FloatArray(8)
    self.tempColor = Color.new(1, 1, 1, 1)
end

function RegionAttachment:updateOffset()
    local regionScaleX = self.width / self.region.originalWidth * self.scaleX
    local regionScaleY = self.height / self.region.originalHeight * self.scaleY
    local localX = -self.width / 2 * self.scaleX + self.region.offsetX * regionScaleX
    local localY = -self.height / 2 * self.scaleY + self.region.offsetY * regionScaleY
    local localX2 = localX + self.region.width * regionScaleX
    local localY2 = localY + self.region.height * regionScaleY
    local radians = self.rotation * math.pi / 180
    local cos = math.cos(radians)
    local sin = math.sin(radians)
    local localXCos = localX * cos + self.x
    local localXSin = localX * sin
    local localYCos = localY * cos + self.y
    local localYSin = localY * sin
    local localX2Cos = localX2 * cos + self.x
    local localX2Sin = localX2 * sin
    local localY2Cos = localY2 * cos + self.y
    local localY2Sin = localY2 * sin
    local offset = self.offset
    offset[RegionAttachment.OX1] = localXCos - localYSin
    offset[RegionAttachment.OY1] = localYCos + localXSin
    offset[RegionAttachment.OX2] = localXCos - localY2Sin
    offset[RegionAttachment.OY2] = localY2Cos + localXSin
    offset[RegionAttachment.OX3] = localX2Cos - localY2Sin
    offset[RegionAttachment.OY3] = localY2Cos + localX2Sin
    offset[RegionAttachment.OX4] = localX2Cos - localYSin
    offset[RegionAttachment.OY4] = localYCos + localX2Sin
end

function RegionAttachment:setRegion(region)
    self.region = region
    local uvs = self.uvs
    if region.rotate then
        uvs[2] = region.u
        uvs[3] = region.v2
        uvs[4] = region.u
        uvs[5] = region.v
        uvs[6] = region.u2
        uvs[7] = region.v
        uvs[0] = region.u2
        uvs[1] = region.v2
    else
        uvs[0] = region.u
        uvs[1] = region.v2
        uvs[2] = region.u
        uvs[3] = region.v
        uvs[4] = region.u2
        uvs[5] = region.v
        uvs[6] = region.u2
        uvs[7] = region.v2
    end
end

function RegionAttachment:computeWorldVertices(bone, worldVertices, offset, stride)
    local vertexOffset = self.offset
    local x = bone.worldX
    local y = bone.worldY
    local a, b, c, d = bone.a, bone.b, bone.c, bone.d
    local offsetX, offsetY = 0, 0

    offsetX = vertexOffset[RegionAttachment.OX1]
    offsetY = vertexOffset[RegionAttachment.OY1]
    worldVertices[offset] = offsetX * a + offsetY * b + x -- br
    worldVertices[offset + 1] = offsetX * c + offsetY * d + y
    offset = offset + stride

    offsetX = vertexOffset[RegionAttachment.OX2]
    offsetY = vertexOffset[RegionAttachment.OY2]
    worldVertices[offset] = offsetX * a + offsetY * b + x -- bl
    worldVertices[offset + 1] = offsetX * c + offsetY * d + y
    offset = offset + stride

    offsetX = vertexOffset[RegionAttachment.OX3]
    offsetY = vertexOffset[RegionAttachment.OY3]
    worldVertices[offset] = offsetX * a + offsetY * b + x -- ul
    worldVertices[offset + 1] = offsetX * c + offsetY * d + y
    offset = offset + stride

    offsetX = vertexOffset[RegionAttachment.OX4]
    offsetY = vertexOffset[RegionAttachment.OY4]
    worldVertices[offset] = offsetX * a + offsetY * b + x -- ur
    worldVertices[offset + 1] = offsetX * c + offsetY * d + y
end


function RegionAttachment:copy()
    local copy = RegionAttachment.new(self.name)
    self:copyTo(copy)
    copy.x = self.x
    copy.y = self.y
    copy.scaleX = self.scaleX
    copy.scaleY = self.scaleY
    copy.rotation = self.rotation
    copy.width = self.width
    copy.height = self.height
    copy.color:setFromColor(self.color)
    copy.path = self.path
    copy.rendererObject = self.rendererObject
    copy.region = self.region
    copy.offset = table.clone(self.offset)
    copy.uvs = table.clone(self.uvs)
    return copy
end



return RegionAttachment