print(package.cpath)


os.execute("pause")

local im = require "imlua"

for k, v in pairs(im) do
    print(k, v)
end