#include <stdio.h>
#include <windows.h>
#include <process.h>

#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
#include "timer.h"


//��������ԭ����ȫ�ֿռ��б���� ��module����
// ���߸�ϣ����require��ֱ��ʹ�� ���豣�浽ȫ����
// �����µ�ע�ắ��luaL_newlib������Ҫname��
//http://lua-users.org/lists/lua-l/2013-05/msg00168.html
#ifndef luaL_register
#define luaL_register(L,n,f) \
	{ if ((n) == NULL) luaL_setfuncs(L,f,0); else luaL_newlib(L,f); }
#endif


// 116444736000000000�Ǵ�1601��1��1��00:00:00:000��1970��1��1��00:00:00:000��������100������
//ת��Ϊ��Ļ�Ҫ����10^7��1�� = 10^9���룬������100���뵥λ��
static long long EPOCH = (long long)116444736000000000ULL;

static int s_loopInThread = 0;
static HANDLE s_hThread = 0;
static int s_refUpdateCall = 0;  //lua�ص�����������
static lua_State* s_L = NULL;
static int s_interval = 100;  //��ʱ�����


static int getMilliTime(int useUtc);

static void stackDump(lua_State* L, const char* msg)
{
    int i;
    int top = lua_gettop(L);
    if (top == 0)
    {
		printf("-----stack:%s empty-----\n", msg);
        return;
    }
    
    printf("-----stack:%s count:%d-----\n", msg, top);
    for (i=1; i<=top; i++)
    {
        int t = lua_type(L, i);
        switch (t)
        {
            case LUA_TSTRING:
                printf("'%s'", lua_tostring(L, i));
                break;
            case LUA_TBOOLEAN:
                printf(lua_toboolean(L, i) ? "true" : "false");
                break;
            case LUA_TNUMBER:
                printf("%g", lua_tonumber(L, i));
                break;
            default:
                printf("%s", lua_typename(L, t));
                break;
        }
        printf("  ");
    }
    printf("\n");
}

//dwTimerֵ�����GetTickCount�����ķ���ֵ���ݵ�ֵ  ��Windows�������������ĺ�����
static void updateInterCall()
{
    if (s_L != NULL && s_refUpdateCall != 0) 
    {
        lua_State* L = s_L;
        //lua_getref(L, s_refUpdateCall); //��registry�л�ûص�����
        lua_rawgeti(L, LUA_REGISTRYINDEX, s_refUpdateCall);  //for lua5.3
        lua_pushinteger(L, getMilliTime(0));

        if (lua_pcall(L, 1, 0, 0))
            printf("error:%s\n", lua_tostring(L, -1));
    }
}

static void __cdecl ThreadProc(void* pdata)
{
    MSG msg;
    while (1)
    {
        if (s_loopInThread == 0)
            break;
        updateInterCall();
        Sleep(s_interval);
    }
    
    _endthread();
}

//ע�⣺ѭ���� �Ῠ������
static void runLoop()
{
    if (s_hThread != 0)
    {
        printf("error:already in running!");
        return;
    }
        
    s_loopInThread = 1;
    s_hThread = (HANDLE)_beginthread(ThreadProc, 0, NULL);
}

static void stopLoop()
{
    if (s_hThread == 0)
        return;
        
    s_loopInThread = 0;

    //����ThreadProc  ���ǿ��������߳� ��ͨ��TIMER_QUIT�˳�
    //����close ������ֹͣ�̣߳�
    CloseHandle(s_hThread);  
    s_hThread = 0;
}


//useUtc 0:no 1:yes
static SYSTEMTIME getTime(int useUtc)
{
    SYSTEMTIME time;
    useUtc == 1 ? GetSystemTime(&time) : GetLocalTime(&time);
    
    /*
    printf("sys time:%04d-%02d-%02d %02d:%02d:%02d %03d\n",
        time.wYear, time.wMonth, time.wDay, 
        time.wHour, time.wMinute, time.wSecond,
        time.wMilliseconds); //0-999
     */

    return time;
}

static int getMilliTime(int useUtc)
{
    union {
        long long ns100;
        FILETIME ft;
    } fileTime;
    
    SYSTEMTIME time = getTime(useUtc);
    if (SystemTimeToFileTime(&time, &fileTime.ft) == 0)
        return 0;

    long long millitime = (long long)((fileTime.ns100 - EPOCH) / 10000LL);
    return (int)millitime;
}


//��lua�д���һ���ص����� + ���(���� win32������ ��������С)
//  ����0 ������Сʱ�����ص�
//timer.startupdate(cbk, 100)
static int l_startUpdate(lua_State* L) 
{
    luaL_checktype(L, 1, LUA_TFUNCTION);
    int interval = luaL_checknumber(L, 2);
    s_interval = interval;
    
    lua_pushvalue(L, 1);  //����c����
    s_L = L;
    s_refUpdateCall = luaL_ref(L, LUA_REGISTRYINDEX);  //�ᵯ��ջ���Ļص�����
    
    runLoop();
    return 0;
}

static int l_waitUpdate(lua_State* L) 
{
    if (s_hThread == 0)
        return 0;
    WaitForSingleObject(s_hThread, INFINITE);  //�ȴ��߳�
    //system("pause");  //һ������ʱ���Ļص�
    return 0;
}

//timer.stopupdate()
static int l_stopUpdate(lua_State* L) 
{
    if (s_refUpdateCall != 0) {
        luaL_unref(L, LUA_REGISTRYINDEX, s_refUpdateCall);
        s_refUpdateCall = 0;
        s_L = NULL;
    }

    stopLoop();
    return 0;
}



static int l_getTimeInterval(lua_State* L, int useUtc)
{
    SYSTEMTIME time = getTime(useUtc);
    lua_newtable(L);
    
    lua_pushstring(L, "year");
    lua_pushinteger(L, time.wYear);
    lua_settable(L, -3);
    
    lua_pushstring(L, "month");
    lua_pushinteger(L, time.wMonth);
    lua_settable(L, -3);
    
    lua_pushstring(L, "day");
    lua_pushinteger(L, time.wDay);
    lua_settable(L, -3);
    
    lua_pushstring(L, "hour");
    lua_pushinteger(L, time.wHour);
    lua_settable(L, -3);
    
    lua_pushstring(L, "minute");
    lua_pushinteger(L, time.wMinute);
    lua_settable(L, -3);
    
    lua_pushstring(L, "second");
    lua_pushinteger(L, time.wSecond);
    lua_settable(L, -3);
    
    lua_pushstring(L, "milliseconds");
    lua_pushinteger(L, time.wMilliseconds);  //0-999
    lua_settable(L, -3);
    
    return 1;
}

static int l_getUtcTime(lua_State* L)
{
    return l_getTimeInterval(L, 1);
}

static int l_getTime(lua_State* L)
{
    return l_getTimeInterval(L, 0);
}

static int l_getTimestamp(lua_State* L)
{
    int useUtc = 0;
    if (lua_gettop(L) == 1)
    {
        useUtc = luaL_checknumber(L, 1);
    }
    
    int milli = getMilliTime(useUtc);
    lua_pushinteger(L, milli);
    return 1;
}


static const struct luaL_Reg libs[] = {
	{"startUpdate", l_startUpdate},
	{"waitUpdate", l_waitUpdate},
	{"stopUpdate", l_stopUpdate},
	{"getTime", l_getTime},
	{"getUtcTime", l_getUtcTime},
	{"getTimestamp", l_getTimestamp},
	{NULL, NULL}
};

//L��ջ������  "timer" ��Ϊ��require���ù�����
DLL_API int luaopen_ctimer(lua_State* L) {
    luaL_register(L, "timer", libs);   //luaL_openlib�ѷ���

    //lua_pop(L, 1);  //'timer'  table  ���ܵ��� ��Ҫ��Ϊrequire�ķ���ֵ
	return 1;
}

