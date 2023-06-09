

local TextureAtlasReader = class("TextureAtlasReader")

function TextureAtlasReader:ctor(text)
    self.lines = string.split(text, "[|$%%]")
    self.index = 1
end

function TextureAtlasReader:readLine()
    local line = self.lines[self.index]
    self.index = self.index + 1
    return line
end

-- format: RGBA8888
-- xy: 813, 160
function TextureAtlasReader:readValue()
    local line = self:readLine()
    local t = string.split(line, ":")
    local value = t[2]
    if nil == value then
        assert(false)
    end
    return string.trim(value)
end

-- tuple: Array<string>
-- xy: 813, 160
function TextureAtlasReader:readTuple()
    local value = self:readValue()
    local t = string.split(value, ",")
    list.map(t, function (v)
        return string.trim(v)
    end)
    return t
end



return TextureAtlasReader