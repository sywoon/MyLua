

local Attachment = class("Attachment")


function Attachment:ctor(name)
    self.name = name
end

function Attachment:copy()
    assert(false)
end

function Attachment:dump(pre)
end

return Attachment
