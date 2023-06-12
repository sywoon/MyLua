
local Attachment = require "attachment"
local VAttachment = class("VertexAttachment", Attachment)

local NEW_ID = 1

function VAttachment:ctor(name)
    VAttachment.super.ctor(VAttachment, name)
    self.id = (NEW_ID & 65535) << 11
    NEW_ID = NEW_ID + 1

    self.bones = nil
    self.vertices = {}
    self.worldVerticesLength = 0
    self.deformAttachment = self
end

--数组读取 需要检查
-- start:base 0?
function VAttachment:computeWorldVertices(slot, start, count, worldVertices, offset, stride)
    count = offset + count / 2 * stride;
    local skeleton = slot.bone.skeleton
    local deformArray = slot.deform
    local vertices = self.vertices
    local bones = self.bones
    if bones == nil then
        if #deformArray > 0 then
            vertices = deformArray
        end
        local bone = slot.bone
        local x = bone.worldX
        local y = bone.worldY
        local a, b, c, d = bone.a, bone.b, bone.c, bone.d
        local v, w = start, offset
        while w < count do
            local vx, vy = vertices[v], vertices[v+1]
            worldVertices[w] = vx * a + vy * b + x
            worldVertices[w+1] = vx * c + vy * d + y
            v = v + 2
            w = w + stride
        end
        return
    end

    local v, skip = 0, 0
    for i = 1, start, 2 do
        local n = bones[i]
        v = v + n + 1
        skip = skip + n
    end

    local skeletonBones = skeleton.bones
    if #deformArray == 0 then
        local w, b = offset, skip * 3
        while w < count do
            local wx, wy = 0, 0
            local n = bones[v]
            v = v + 1
            n = n + v
            while v < n do
                local bone = skeletonBones[bones[v]]
                local vx, vy, weight = vertices[b], vertices[b+1], vertices[b+2]
                wx = wx + (vx * bone.a + vy * bone.b + bone.worldX) * weight
                wy = wy + (vx * bone.c + vy * bone.d + bone.worldY) * weight
                v = v + 1
                b = b + 3
            end
            worldVertices[w] = wx
            worldVertices[w+1] = wy
        end
    else
        local deform = deformArray
        local w, b, f = offset, skip*3, skip*2
        while w < count do
            local wx, wy = 0, 0
            local n = bones[v]
            v = v + 1
            n = v + v
            while v < n do
                local bone = skeletonBones[bones[v]]
                local vx, vy = vertices[b] + deform[f], vertices[b+1] + deform[f+1]
                local weight = vertices[b + 2]
                wx = wx + (vx * bone.a + vy * bone.b + bone.worldX) * weight
                wy = wy + (vx * bone.c + vy * bone.d + bone.worldY) * weight
                b = b + 3
                f = f + 2
            end
            worldVertices[w] = wx
            worldVertices[w+1] = wy
            w = w + stride
        end
    end
end

function VAttachment:copyTo(attachment)
    if self.bones then
        attachment.bones = {}
        for i, bone in ipairs(self.bones) do
            attachment.bones[i] = bone
        end
    else
        attachment.bones = nil
    end
    
    if self.vertices then
        attachment.vertices = {}
        for i, vertice in ipairs(self.vertices) do
            attachment.vertices[i] = vertice
        end
    else
        attachment.vertices = nil
    end

    attachment.worldVerticesLength = self.worldVerticesLength
	attachment.deformAttachment = self.deformAttachment
end


return VAttachment

