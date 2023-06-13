
local Skin = class("Skin")


function Skin:ctor()
    self.name = ""
    self.attachments = {}  --Array<Map<Attachment>>
    self.bones = {}         --Array<BoneData>
    self.constraints = {}   --Array<ConstraintData>
end

function Skin:setAttachment(slotIdx, name, attachment)
    if attachment == nil then
        error("attachment cannot be null")
    end
    local attach = self.attachments
    if not attach[slotIdx] then
        attach[slotIdx] = {}
    end
    attach[slotIdx][name] = attachment
end

function Skin:addSkin(skin)
    for i = 1, skin.bones.length do
        local bone = skin.bones[i]
        local contained = list.exist(self.bones, bone)
        if not contained then
            table.insert(self.bones, bone)
        end
    end

    for i = 1, skin.constraints.length do
        local constraint = skin.constraints[i]
        local contained = list.exist(self.constraints, constraint)
        if not contained then
            table.insert(self.constraints, constraint)
        end
    end

    local attachments = skin:getAttachments()
    for i = 1, attachments.length do
        local attachment = attachments[i]
        self:setAttachment(attachment.slotIndex, attachment.name, attachment.attachment)
    end
end

function Skin:copySkin(skin)
    for _, bone in ipairs(skin.bones) do
        local contained = list.exist(this.bones, bone)
        if not contained then
            table.insert(self.bones, bone)
        end
    end

    for _, constraint in ipairs(skin.constraints) do
        local contained = list.exist(self.constraints, constraint)
        if not contained then
            table.insert(self.constraints, contained)
        end
    end

    local attachments = skin:getAttachments()
    for _, attachment in ipairs(attachments) do
        if attachment.attachment then
            if attachment.attachment.type == AttachmentType.Mesh then
                attachment.attachment = attachment.attachment:newLinkedMesh()
				self:setAttachment(attachment.slotIndex, attachment.name, attachment.attachment)
            else
                attachment.attachment = attachment.attachment:copy()
				self:setAttachment(attachment.slotIndex, attachment.name, attachment.attachment)
            end
        end
    end
end

-- slotIndex:base 0
function Skin:getAttachment(slotIndex, name)
    local dictionary = self.attachments[slotIndex+1]
    if not dictionary then
        return nil
    end
    return dictionary[name]
end

function Skin:removeAttachment(slotIndex, name)
    local dictionary = self.attachments[slotIndex+1]
    if not dictionary then
        return nil
    end
    dictionary[name] = nil
end

function Skin:getAttachments()
    local entries = {}  --Array<SkinEntry>
    for i, attachmentMap in ipairs(self.attachments) do
        for name, attachment in pairs(attachmentMap) do
            table.insert(entries, SkinEntry.new(i, name, attachment))
        end
    end
    return entries
end

--slotIndex:base 0
-- attachmentsEntry:Array<SkinEntry>
function Skin:getAttachmentsForSlot(slotIndex, attachmentsEntry)
    local attachmentMap = self.attachments[slotIndex+1]
    for name, attachment in pairs(attachmentMap) do
        table.insert(attachmentsEntry, SkinEntry.new(slotIndex, name, attachment))
    end
end

function Skin:clear()
    self.attachments.length = 0
    self.bones.length = 0
    self.constraints.length = 0
end


function Skin:attachAll(skeleton, oldSkin)
    local slotIndex = 0
    for _, slot in ipairs(skeleton.slots) do
        local slotAttachment = slot:getAttachment()
        if slotAttachment and slotIndex < oldSkin.attachments.length then
            local dictionary = oldSkin.attachments[slotIndex]
            for key, skinAttachment in pairs(dictionary) do
                if slotAttachment == skinAttachment then
                    local attachment = self:getAttachment(slotIndex, key)
                    if attachment then
                        slot:setAttachment(attachment)
                    end
                end
            end
        end
    end
end



return Skin