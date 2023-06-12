
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
    attachment.setRegion(region);
    return attachment;
end

function AALoader:newMeshAttachment(skin, name, path)
    assert(false, "newMeshAttachment")
end

function AALoader:newBoundingBoxAttachment(skin, name)
    assert(false, "newBoundingBoxAttachment")
end

function AALoader:newPathAttachment(skin, name)
    assert(false, "newPathAttachment")
end

function AALoader:newPointAttachment(skin, name)
    assert(false, "newPointAttachment")
end

function AALoader:newClippingAttachment(skin, name)
    assert(false, "newClippingAttachment")
end


return AALoader