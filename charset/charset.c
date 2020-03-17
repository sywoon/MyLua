#include <ctype.h>
#include <limits.h>
#include <stddef.h>
#include <string.h>
#include <windows.h>

#include "lua.h"
#include "lauxlib.h"


#if (LUA_VERSION_NUM >= 502)

#define luaL_register(L,n,f)	luaL_newlib(L,f)

#endif

static int ansi2unicode(const char* in, wchar_t** out)
{
	int len = MultiByteToWideChar(CP_ACP,
		                                0,
		                                in,
		                                -1,
		                                NULL,
		                                0);

	const int size = len * 2;
	wchar_t* buf = (wchar_t*)malloc(size);
	memset(buf, 0, size);

	MultiByteToWideChar(CP_ACP,
		                0,
		                in,
		                -1,
		                (LPWSTR)buf,
		                len);
    *out = buf;
	//free(buf);  //外部使用后释放
    return size;
}

static int unicode2ansi(const wchar_t* in, char** out)
{
	int len = WideCharToMultiByte(CP_ACP,
		                                0,
		                                (LPWSTR)in,
		                                -1,
		                                NULL,
		                                0,
		                                NULL,
		                                NULL);

	const int size = len;
	char* buf = (char*)malloc(size);
	memset(buf, 0, size);

	len = WideCharToMultiByte(CP_ACP,
		                0,
		                (LPWSTR)in,
		                -1,
		                buf,
		                len,
		                NULL,
		                NULL);
    *out = buf;
    //free(buf);
    return size;
}

static int utf82unicode(const char* in, wchar_t** out)
{
	int len = MultiByteToWideChar(CP_UTF8,
		                                0,
		                                in,
		                                -1,
		                                NULL,
		                                0);

	const int size = len * 2;
	wchar_t* buf = (wchar_t*)malloc(size);
	memset(buf, 0, size);

	len = MultiByteToWideChar(CP_UTF8,
		                0,
		                in,
		                -1,
		                (LPWSTR)buf,
		                len);
	
    *out = buf;
    //free(buf);
    return size;
}


static int unicode2utf8(const wchar_t* in, char** out)
{
	int len = WideCharToMultiByte(CP_UTF8,
		                                0,
		                                (LPWSTR)in,
		                                -1,
		                                NULL,
		                                0,
		                                NULL,
		                                NULL);

	const int size = len;
	char* buf = (char*)malloc(size);
	memset(buf, 0, size);

	len = WideCharToMultiByte(CP_UTF8,
		                0,
		                (LPWSTR)in,
		                -1,
		                buf,
		                len,
		                NULL,
		                NULL);
    *out = buf;
    //free(buf);
    return size;
}

static int ansi2utf8(const char* in, char** out)
{
	wchar_t* temp;
	int size = ansi2unicode(in, &temp);
	//printf("a2u:%s :%s\n", in, temp);
    size = unicode2utf8(temp, out);
    free(temp);
    return size;
}


static int utf82ansi(const char* in, char** out)
{
    wchar_t* temp;
	int size = utf82unicode(in, &temp);
    size = unicode2ansi(temp, out);
    free(temp);
    return size;
}


static int a2w_lua(lua_State* L)
{
    luaL_argcheck(L, lua_gettop(L) == 1, 1, "expected 1 argument");

	size_t len;
	const char* pszIn = lua_tolstring(L, -1, &len);

    wchar_t* pszOut = NULL;
    int size = ansi2unicode(pszIn, &pszOut);

    lua_pushlstring(L, (char*)pszOut, size-2); //不包含结尾的\0\0
	free(pszOut);
    return 1;
}

static int w2a_lua(lua_State* L)
{
	luaL_argcheck(L, lua_gettop(L) == 1, 1, "expected 1 argument");

	size_t len;
	const wchar_t* pszIn = (wchar_t*)lua_tolstring(L, -1, &len);

	char* pszOut = NULL;
	int size = unicode2ansi(pszIn, &pszOut);

	lua_pushlstring(L, pszOut, size-1);  //不包含结尾的\0
	free(pszOut);
	return 1;
}

static int a2u_lua(lua_State* L)
{
	luaL_argcheck(L, lua_gettop(L) == 1, 1, "expected 1 argument");

	size_t len;
	const char* pszIn = lua_tolstring(L, -1, &len);

	char* pszOut = NULL;
	int size = ansi2utf8(pszIn, &pszOut);

	lua_pushlstring(L, pszOut, size-1); 
	free(pszOut);
	return 1;
}

static int u2a_lua(lua_State* L)
{
	luaL_argcheck(L, lua_gettop(L) == 1, 1, "expected 1 argument");

	size_t len;
	const char* pszIn = lua_tolstring(L, -1, &len);

	char* pszOut = NULL;
	int size = utf82ansi(pszIn, &pszOut);

	lua_pushlstring(L, pszOut, size-1);
	free(pszOut);
	return 1;
}

static int w2u_lua(lua_State* L)
{
	luaL_argcheck(L, lua_gettop(L) == 1, 1, "expected 1 argument");

	size_t len;
	const wchar_t* pszIn = (wchar_t*)lua_tolstring(L, -1, &len);

	char* pszOut = NULL;
	int size = unicode2utf8(pszIn, &pszOut);

	lua_pushlstring(L, pszOut, size-1);
	free(pszOut);
	return 1;
}

static int u2w_lua(lua_State* L)
{
	luaL_argcheck(L, lua_gettop(L) == 1, 1, "expected 1 argument");

	size_t len;
	const char* pszIn = lua_tolstring(L, -1, &len);

	wchar_t* pszOut = NULL;
	int size = utf82unicode(pszIn, &pszOut);

	lua_pushlstring(L, (char*)pszOut, size-2);
	free(pszOut);
	return 1;
}


static const struct luaL_Reg thislib[] = {
  {"a2w", a2w_lua},
  {"w2a", w2a_lua},
  {"a2u", a2u_lua},
  {"u2a", u2a_lua},
  {"w2u", w2u_lua},
  {"u2w", u2w_lua},
  {NULL, NULL}
};


LUALIB_API int luaopen_charset(lua_State* L) {
	luaL_register(L, "charset", thislib);
	return 1;
}

