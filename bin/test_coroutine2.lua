--���Զ��Э�� �����ͻָ�����
--���ۣ�
-- ��Э�̴�����˳�� ����ָ�  ֻ������Э�̽����� �Ż�ص����߳�
-- ֻ��yield��ʽ �����Э�̲ſ�����resume�ָ�
--   ���磺��Э�� ���� ��Э�� ��resume =����Э�� yield =�� ��Э��Ҳyield
--   ֮��ָ�����Э�� ����ͨ��resume��ʽ�ָ���Э��

--ע�⣺
-- 1 lua5.1��lua5.3 ������߳����Ƿ���Ĭ�ϵ�Э�� ����ͬ 
--    coroutine.running() ǰ��Ϊnil �����о����ֵ �Ҵ���running״̬  �л���Ҳ�ܱ��normal

local co = coroutine

local co_pool = {}

function dump()
    for name, c in pairs(co_pool) do
        print(name, c, co.status(c))
    end
end

function sub2()
    print("sub2 step1")
    dump()
    co.yield()   --�ָ���sub1�� ����main�� ��Ϊsub1����normal״̬
    print("sub2 step2")
    dump()
    co.yield()   --�ָ���main�� ����sub1�� ��Ϊsub1�Ѿ�����
    print("sub2 step3")
end

function sub1()
    print("sub1 step1")
    local c2 = co.create(sub2)
    co_pool["c2"] = c2
    
    local flag, ret = co.resume(c2)
    print("sub1 step2")
    
    --����1�� ����������� ���ܱ�sub2��yield�ָ� ֻ��ͨ��resume
    --co.yield()
    
    --����2�� �����»ָ�sub2  �Ƿ񻹻������  ���Խ��������normal״̬ ����sub2��yield�����
    co.resume(c2)
    print("sub1 step3")
end

function main()
    print("main step1")
    co_pool["main"] = co.running()
    
    local c1 = co.create(sub1)
    co_pool["c1"] = c1
    
    local flag, ret = co.resume(c1)
    print("main step2")
    dump()
    co.resume(co_pool["c2"])  --�����ָ�c2 �������ٴ�yield�� �ǻص����߳� ���ǻص�sub1��
    print("main step3")
    dump()
end

main()