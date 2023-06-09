

local TextureAtlasReader = require "texture_atlas_reader"
local TextureAtlas = class("TextureAtlas")




function TextureAtlas:ctor()
end

function TextureAtlas:load(path)
    local text = io.readFile(path)
    local reader = TextureAtlasReader.new(text)
    local tuple = {}  -- Array<string>
    local page = nil  -- TextureAtlasPage

    while true do
        local line = reader:readLine()
        if line == nil then
            break
        end
        line = string.trim(line)  --spineboy.png
        if line.length == 0 then
            page = nil
        else
            page = TextureAtlasPage.new()
            page.name = line
            local tuple = reader:readTuple()  --size: 1024,256
            if #tuple == 2 then
                page.width = tonumber(tuple[1])
                page.height = tonumber(tuple[2])
                tuple = reader:readTuple()  --format: RGBA8888
            end
            tuple = reader:readTuple()  --filter: Linear,Linear
            page.minFilter = tuple
            page.magFilter = tuple

            local direction= reader.readValue()  --repeat: none
            page.uWrap = TextureWrap.ClampToEdge  --spine没做支持？
            page.vWrap = TextureWrap.ClampToEdge
            if direction == "x" then
                page.uWrap = TextureWrap.Repeat
            elseif direction == "y" then
                page.vWrap = TextureWrap.Repeat
            elseif direction == "xy" then
                page.uWrap = TextureWrap.Repeat
                page.vWrap = TextureWrap.Repeat
            end

            page.texture = nil  --textureLoader(line)
            page.texture.setFilters(page.minFilter, page.magFilter)
            page.texture.setWraps(page.uWrap, page.vWrap)
            page.width = page.texture.getImage().width
            page.height = page.texture.getImage().height
            table.insert(self.pages, page)
        end
    end
end





return TextureAtlas