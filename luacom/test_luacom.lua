local luacom = require "luacom"
local lfs = require "lfs"

local rootPath = lfs.currentdir()

local myExcel= luacom.CreateObject("Excel.Application")    --创建EXCEL对象
if nil == myBook then
    print("init Excel failed!")
    return
end

--local myExcel = luacom.CreateObject("Ket.Application")    --创建WPS表格对象 新版的WPS已经兼容了MSO 就不用这么写了

myExcel.Visible = false    --不显示EXCEL窗口
local myBook = myExcel.WorkBooks:Open(rootPath .. "/test.xls", 0, 0)  
if nil == myBook then
    print("read file error:test.xls")
    return
end
  
local mySheet = MyBook.Sheets(1)    --使用第一个Sheet  可以用Sheets(SheetName)来指定Sheet

-- 使用Cells来写
for i = 1, 20 do
    mySheet.Cells(i, 1).Value2 = "A" .. i
    mySheet.Cells(i, 2).Value2 = "B" .. i
end


-- 使用Range来写
local myRange = mySheet:Range("A1:B20")  --取得表中的一个区域
for i = 1, 20 do
    mySheet.Cells(i, 1).Value2 = "A" .. i
    mySheet.Cells(i, 2).Value2 = "B" .. i
end


-- 使用 Cells来读 
do
    local x = tostring(mySheet.Cells(i, 2).Value2)
    local y = tonumber(mySheet.Cells(i, 2).Value2)
end


--   使用 Range来读 
do
    myRange = MySheet:Range("A1")    --读单独的单元格
    print(myRange.Value2)
    myRange = MySheet:Range("A1:B100")    --读一个区域
    print(myRange.Value2[1][2])    -- 结果为二维数组
    print(myRange:Offset(0,1).Value2[1][1])    --带偏移量的 结果,也为二维数组
    
    --* 偏移量Offset会扩展Range 有需要的话  
    --* 超出 Range的范围会取得nil 
    --* Value和Value2的区别在于 Value2没有日期型和货币型,使用双精度型代替 
end



--大量读取/写入数据 
do
    local x = {}    --定义一个二维表 二维数组 ,模拟Excel的Range
    for i = 1, 1000 do
        x[i] = {'A1'..i,'B2'..i}    --每一行为一个表 数组 
    end
    MySheet:Range("A2:B801").Value2 = x    
end
--将表写入Range,Range大于数组,少的数据用空白(#N/A)填充,Range小于数组,多的数据丢弃
--注意:luacom模块有bug,当数据量过大时会造成溢出,可靠的数据量约为6K个单元格,写更多的数据可以分段写入 单列数据,但这个量随着每行单元的增多而增多,例如当每行10个单元格时,可靠的数据量约为12K个单元格 ,如下:

do
    local x={}
    for i = 1, 6000 do
        x[i]={1}
    end
    MySheet:Range("A1:A6000").Value2 = x
    for i = 1, 6000 do
        x[i]={2}
    end
    MySheet:Range("A6001:A12000").Value2 = x
end


--关闭文件
MyExcel.DisplayAlerts = false    --关闭时不提示
MyBook:Save()    --保存打开的表,也可以用MyExcel.ActiveWorkBook:Save()    --保存当前表
MyExcel:Quit()
















