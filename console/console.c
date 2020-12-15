#include <windows.h>
#include "lua.h"
#include "lauxlib.h"


#if (LUA_VERSION_NUM >= 502)
#define luaL_register(L,n,f)	luaL_newlib(L,f)
#endif

static int set_text_color(lua_State *L)
{
    WORD color = (WORD)luaL_checknumber(L, -1);
    SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE), color);
    return 0;
}


static const struct luaL_Reg libs[] = {
    {"setTextColor", set_text_color},
    {NULL, NULL}
};


LUALIB_API int luaopen_console_core(lua_State* L) {
	luaL_register(L, "console", libs);
	return 1;
}



