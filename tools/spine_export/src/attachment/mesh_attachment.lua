local Color = require "color"
local VertexAttachment = require "attachment.vertex_attachment"
local MeshAttachment = class("MeshAttachment", VertexAttachment)


function MeshAttachment:ctor(name)
    MeshAttachment.super.ctor(self, name)
    self.name = name
    self.region = nil  --TextureRegion
    self.path = ""
    self.regionUVs = {}  --ArrayLike<number>
    self.uvs = {}  --ArrayLike<number>
    self.triangles = {}  --Array<number>
    self.color = Color.new(1, 1, 1, 1)

    self.width = 0
    self.height = 0
    self.hullLenght = 0
    self.edges = {}  --Array<number>
    self.parentMesh = nil  --MeshAttachment

    self.tempColor = Color.new()
end

function MeshAttachment:updateUVs()
    local regionUVs = self.regionUVs
    local uvs = self.uvs
    local n = #uvs
    local u, v = self.region.u, self.region.v
    local width, height = 0, 0
    if self.region and self.region.type == RegionType.TextureAtlas then
        local region = self.region
        local textureWidth = region.page.width  --region.texture:getImage().width
        local textureHeight = region.page.height --region.texture:getImage().height
        if region.degrees == 90 then
            u = u - (region.originalHeight - region.offsetY - region.height) / textureWidth
            v = v - (region.originalWidth - region.offsetX - region.width) / textureHeight
            width = region.originalHeight / textureWidth
            height = region.originalWidth / textureHeight
            for i = 1, n, 2 do
                uvs[i] = u + regionUVs[i+1] * width
                uvs[i+1] = v + (1 - regionUVs[i]) * height
            end
            return
        elseif region.degrees == 180 then
            u = u - (region.originalWidth - region.offsetX - region.width) / textureWidth
            v = v - region.offsetY / textureHeight
            width = region.originalWidth / textureWidth
            height = region.originalHeight / textureHeight
            for i = 1, n, 2 do
                uvs[i] = u + (1 - regionUVs[i]) * width
				uvs[i + 1] = v + (1 - regionUVs[i + 1]) * height
            end
            return
        elseif region.degrees == 270 then
            u = u - region.offsetX / textureWidth
            v = v - region.offsetY / textureHeight
            width = region.originalHeight / textureWidth;
            height = region.originalWidth / textureHeight;
            for i = 1, n, 2 do
                uvs[i] = u + (1 - regionUVs[i+1]) * width
				uvs[i + 1] = v + regionUVs[i] * height
            end
            return
        end

        u = u - region.offsetX / textureWidth
        v = v - (region.originalHeight - region.offsetY - region.height) / textureHeight
        width = region.originalWidth / textureWidth
        height = region.originalHeight / textureHeight
    elseif self.region == nil then
        u, v = 0, 0
        width, height = 1, 1
    else
        width = self.region.u2 - u
        height = self.region.v2 - v
    end

    for i = 1, n, 2 do
        uvs[i] = u + regionUVs[i] * width
        uvs[i + 1] = v + regionUVs[i + 1] * height
    end
end

function MeshAttachment:getParentMesh()
    return self.parentMesh
end

function MeshAttachment:setParentMesh(parentMesh)
    self.parentMesh = parentMesh
    if parentMesh then
        self.bones = parentMesh.bones
        self.vertices = parentMesh.vertices
        self.worldVerticesLength = parentMesh.worldVerticesLength
        self.regionUVs = parentMesh.regionUVs
        self.triangles = parentMesh.triangles
        self.hullLength = parentMesh.hullLength
        self.worldVerticesLength = parentMesh.worldVerticesLength
    end
end

function MeshAttachment:copy()
    if self.parentMesh then
        return self:newLinedMesh()
    end

    local copy = MeshAttachment.new(self.name)
    copy.region = self.region
    copy.path = self.path
    copy.color:setFromColor(self.color)
    self:copyTo(copy)

    copy.regionUVs = table.clone(self.regionUVs)
    copy.uvs = table.clone(self.uvs)
    copy.triangle = table.clone(self.triangles)
    copy.hullLength = self.hullLength

    if self.edges then
        copy.edges = table.clone(self.edges)
    end
    copy.width = self.width
    copy.height = self.height
    return copy
end

function MeshAttachment:newLinkedMesh()
    local copy = MeshAttachment.new(self.name)
    copy.region = self.region
    copy.path = self.path
    copy.color.setFromColor(self.color)
    copy.deformAttachment = self.deformAttachment
    copy:setParentMesh(self.parentMesh or self)
    copy:updateUVs()
    return copy
end


return MeshAttachment
