

local TextureAtlasReader = class("TextureAtlasReader")

local function log(...)
    -- print("[TextureAtlasReader]", ...)
end

function TextureAtlasReader:ctor(text)
    self.lines = string.split(text, "[\r\n]")
    self.index = 1
end

function TextureAtlasReader:readLine()
    local line = self.lines[self.index]
    self.index = self.index + 1
    log("readLine", line, self.index, #self.lines)
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
    log("readTuple", table.tostring(t))
    return t
end



return TextureAtlasReader