require "sllib_base"

local path = "D:\\KaiBaoXiang\\kbx_master\\client\\bin\\res\\sk"

local _, folders = os.dir(path, 1)
print("folders", #folders)
for _, folder in ipairs(folders) do
    local files = os.dirext(folder, 1, {".png"})
    if #files > 1 then
        table.print(files)
    end
end






