local RegionAttachment = require "attachment.region_attachment"
local MeshAttachment = require "attachment.mesh_attachment"
local BoundingBoxAttachment = require "attachment.bounding_box_attachment"
local PathAttachment = require "attachment.path_attachment"
local PointAttachment = require "attachment.point_attachment"
local ClippingAttachment = require "attachment.clipping_attachment"

local ALoader = require "attachment.attachment_loader"
local AALoader = class("AtlasAttachmentLoader", ALoader)


function AALoader:ctor(atlas)
    AALoader.super.ctor(self)
    self.atlas = atlas  -- TextureAtlas
end


function AALoader:newRegionAttachment(skin, name, path)
    local region = self.atlas:findRegion(path)
    if nil == region then
        error("region not found:" .. path)
        return
    end
    region.renderObject = region

    local attachment = RegionAttachment.new(name)
    attachment:setRegion(region)
    return attachment
end

function AALoader:newMeshAttachment(skin, name, path)
    local region = self.atlas:findRegion(path)
    if nil == region then
        error("region not found:" .. path)
        return
    end
    region.renderObject = region
    local attachment = MeshAttachment.new(name)
    attachment.region = region
    return attachment
end

function AALoader:newBoundingBoxAttachment(skin, name)
    return BoundingBoxAttachment.new(name)
end

function AALoader:newPathAttachment(skin, name)
    return PathAttachment.new(name)
end

function AALoader:newPointAttachment(skin, name)
    return PointAttachment.new(name)
end

function AALoader:newClippingAttachment(skin, name)
    return ClippingAttachment.new(name)
end


return AALoader