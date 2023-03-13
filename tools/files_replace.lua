--demo���滻�ļ��е��ض��ַ�

require "sllib_base"

-- ����mvcĿ¼ src\mvc
-- ����view�ڵ��ļ�
-- Ѱ�ҷ��Զ��ͷŵ�Handler
--this.listAct.selectHandler = Laya.Handler.create(this, this._selectList, null, false);
--this.listAct.renderHandler = Laya.Handler.create(this, this._renderList, null, false);
--�޸��滻Ϊ
--this.listAct.selectHandler = this.createHandler(this, this._selectList, null, false);
--this.listAct.renderHandler = this.createHandler(this, this._renderList, null, false);

--[[
ע�⣺�������û�ų� �޸ĺ���Ҫ����
this.tweenTo(this.imgIndicator, { rotation: angle }, time, Laya.Ease.quadOut, Laya.Handler.create(this, () => {
    this.imgSelect.rotation = this.imgIndicator.rotation;
    this.imgSelect.visible = true;
    this.ani1.play(0, false);  //��ƥ�䵽����  Ҳ�ܳɹ�!
}))
--]]




function replaceHandlerInFile(path)
    local txt = io.readFile(path)

    --print(string.match(txt, "Laya%.Handler%.create%((.-, false)%)"))
    --print(string.match(txt, "Laya%.Handler%.create%(.-, false%)"))
    
    local matched = string.match(txt, "Laya%.Handler%.create%((.-, false)%)")
    if matched then
        txt = string.gsub(txt, "Laya%.Handler%.create%((.-, false)%)", "this.createHandler(%1)")
        matched = string.match(txt, "Laya%.Handler%.create%((.-, false)%)")
        print("deal file", path)
        io.writeFile(path, txt)
    end
end

--replaceHandlerInfile("D:/KaiBaoXiang/kbx_master/client/src/mvc/activity/view/PopBgActivityEnter.ts")


function replaceHandlerInFolder(path)
    local files = os.dir(path, true)
    for _, file in ipairs(files) do
        replaceHandlerInFile(file)
    end
end

replaceHandlerInFolder("D:/KaiBaoXiang/kbx_master/client/src/mvc/")




















