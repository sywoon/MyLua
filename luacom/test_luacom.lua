local luacom = require "luacom"
local lfs = require "lfs"

local rootPath = lfs.currentdir()

local myExcel= luacom.CreateObject("Excel.Application")    --����EXCEL����
if nil == myBook then
    print("init Excel failed!")
    return
end

--local myExcel = luacom.CreateObject("Ket.Application")    --����WPS������ �°��WPS�Ѿ�������MSO �Ͳ�����ôд��

myExcel.Visible = false    --����ʾEXCEL����
local myBook = myExcel.WorkBooks:Open(rootPath .. "/test.xls", 0, 0)  
if nil == myBook then
    print("read file error:test.xls")
    return
end
  
local mySheet = MyBook.Sheets(1)    --ʹ�õ�һ��Sheet  ������Sheets(SheetName)��ָ��Sheet

-- ʹ��Cells��д
for i = 1, 20 do
    mySheet.Cells(i, 1).Value2 = "A" .. i
    mySheet.Cells(i, 2).Value2 = "B" .. i
end


-- ʹ��Range��д
local myRange = mySheet:Range("A1:B20")  --ȡ�ñ��е�һ������
for i = 1, 20 do
    mySheet.Cells(i, 1).Value2 = "A" .. i
    mySheet.Cells(i, 2).Value2 = "B" .. i
end


-- ʹ�� Cells���� 
do
    local x = tostring(mySheet.Cells(i, 2).Value2)
    local y = tonumber(mySheet.Cells(i, 2).Value2)
end


--   ʹ�� Range���� 
do
    myRange = MySheet:Range("A1")    --�������ĵ�Ԫ��
    print(myRange.Value2)
    myRange = MySheet:Range("A1:B100")    --��һ������
    print(myRange.Value2[1][2])    -- ���Ϊ��ά����
    print(myRange:Offset(0,1).Value2[1][1])    --��ƫ������ ���,ҲΪ��ά����
    
    --* ƫ����Offset����չRange ����Ҫ�Ļ�  
    --* ���� Range�ķ�Χ��ȡ��nil 
    --* Value��Value2���������� Value2û�������ͺͻ�����,ʹ��˫�����ʹ��� 
end



--������ȡ/д������ 
do
    local x = {}    --����һ����ά�� ��ά���� ,ģ��Excel��Range
    for i = 1, 1000 do
        x[i] = {'A1'..i,'B2'..i}    --ÿһ��Ϊһ���� ���� 
    end
    MySheet:Range("A2:B801").Value2 = x    
end
--����д��Range,Range��������,�ٵ������ÿհ�(#N/A)���,RangeС������,������ݶ���
--ע��:luacomģ����bug,������������ʱ��������,�ɿ���������ԼΪ6K����Ԫ��,д��������ݿ��Էֶ�д�� ��������,�����������ÿ�е�Ԫ�����������,���統ÿ��10����Ԫ��ʱ,�ɿ���������ԼΪ12K����Ԫ�� ,����:

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


--�ر��ļ�
MyExcel.DisplayAlerts = false    --�ر�ʱ����ʾ
MyBook:Save()    --����򿪵ı�,Ҳ������MyExcel.ActiveWorkBook:Save()    --���浱ǰ��
MyExcel:Quit()
















