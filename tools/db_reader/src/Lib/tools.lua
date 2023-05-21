require "lfs"

function calcuFitSize(str, font)
    assert(str and font, "parameter is nil")

    local lineHeight = font * 1.5
    local w, h = 0, lineHeight
    local compareW = nil

    for i = 1, #str do
        local curByte = string.byte(str, i)
        if curByte == 10 then
            compareW = compareW or 0

            if w > compareW then
                compareW = w
            end

            w = 0
            h = h + lineHeight
        end

        w = w + font * 0.73
    end

    local w = (compareW and compareW > w) and compareW or w
    return w, h
end

function otherDirExecute(p, e)
    local oldDir = lfs.currentdir()

    lfs.chdir(p)
    os.execute(e)
    lfs.chdir(oldDir)
end

function getTableByFile(path)
    local file = io.open(path, "r")
    assert(file)

    local s = file:read("*a")
    file:close()
    local t = loadstring(s)()
    return t
end