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

#define IsUTF8Signature(p) \
          ((*(p+0) == '\xEF' && *(p+1) == '\xBB' && *(p+2) == '\xBF'))


#define UTF8StringStart(p) \
          (IsUTF8Signature(p)) ? (p+3) : (p)
          

// 注：纯ansi组成的文件 也返回true
static BOOL IsUtf8(const char* pTest,int nLength)
{
  static int byte_class_table[256] = {
  /*       00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F  */
  /* 00 */ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  /* 10 */ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  /* 20 */ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  /* 30 */ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  /* 40 */ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  /* 50 */ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  /* 60 */ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  /* 70 */ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  /* 80 */ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  /* 90 */ 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
  /* A0 */ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
  /* B0 */ 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
  /* C0 */ 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
  /* D0 */ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
  /* E0 */ 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 7, 7,
  /* F0 */ 9,10,10,10,11, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4
  /*       00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F  */ };

  /* state table */
  typedef enum {
    kSTART = 0,kA,kB,kC,kD,kE,kF,kG,kERROR,kNumOfStates } utf8_state;

  static utf8_state state_table[] = {
  /*                            kSTART, kA,     kB,     kC,     kD,     kE,     kF,     kG,     kERROR */
  /* 0x00-0x7F: 0            */ kSTART, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR,
  /* 0x80-0x8F: 1            */ kERROR, kSTART, kA,     kERROR, kA,     kB,     kERROR, kB,     kERROR,
  /* 0x90-0x9f: 2            */ kERROR, kSTART, kA,     kERROR, kA,     kB,     kB,     kERROR, kERROR,
  /* 0xa0-0xbf: 3            */ kERROR, kSTART, kA,     kA,     kERROR, kB,     kB,     kERROR, kERROR,
  /* 0xc0-0xc1, 0xf5-0xff: 4 */ kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR,
  /* 0xc2-0xdf: 5            */ kA,     kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR,
  /* 0xe0: 6                 */ kC,     kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR,
  /* 0xe1-0xec, 0xee-0xef: 7 */ kB,     kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR,
  /* 0xed: 8                 */ kD,     kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR,
  /* 0xf0: 9                 */ kF,     kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR,
  /* 0xf1-0xf3: 10           */ kE,     kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR,
  /* 0xf4: 11                */ kG,     kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR, kERROR };

#define BYTE_CLASS(b) (byte_class_table[(unsigned char)b])
#define NEXT_STATE(b,cur) (state_table[(BYTE_CLASS(b) * kNumOfStates) + (cur)])

    utf8_state current = kSTART;
    int i;

    const char* pt = pTest;
    int len = nLength;

    for(i = 0; i < len ; i++, pt++) {

      current = NEXT_STATE(*pt,current);
      if (kERROR == current)
        break;
      }

    return (current == kSTART) ? TRUE : FALSE;
}


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

static int isutf8_lua(lua_State* L)
{
    luaL_argcheck(L, lua_gettop(L) == 1, 1, "expected 1 argument");

	size_t len;
	const char* pszIn = lua_tolstring(L, -1, &len);
	
	BOOL is = 0;
	if (len >= 3 && IsUTF8Signature(pszIn))
    {
        is = 1;
    }
    else
    {
        is = IsUtf8(pszIn, len);
    }
        
    lua_pushboolean(L, is);
    return 1;
}


static const struct luaL_Reg thislib[] = {
  {"a2w", a2w_lua},
  {"w2a", w2a_lua},
  {"a2u", a2u_lua},
  {"u2a", u2a_lua},
  {"w2u", w2u_lua},
  {"u2w", u2w_lua},
  {"isutf8", isutf8_lua},
  {NULL, NULL}
};


LUALIB_API int luaopen_charset(lua_State* L) {
	luaL_register(L, "charset", thislib);
	return 1;
}

