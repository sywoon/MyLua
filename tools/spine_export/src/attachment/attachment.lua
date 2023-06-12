

local Attachment = class("Attachment")


function Attachment:ctor(name)
    self.name = name
end

function Attachment:copy()
    assert(false)
end

return Attachment
