#include "XlsxEditRegFuncs.h"

#include "WorkBook.h"

using namespace xlsxEdit;
int lua_create_new_workbook(lua_State* l)
{
	WorkBook** book = (WorkBook**)lua_newuserdata(l, sizeof(WorkBook*));
	*book = new WorkBook();

	luaL_getmetatable(l, "WorkBookClass");
	lua_setmetatable(l, -2);

	return 1;
}

int lua_workbook_open(lua_State* l)
{
	WorkBook** book = (WorkBook**)lua_touserdata(l, 1);
	luaL_argcheck(l, book != nullptr, 1, "invalid user data");
	lua_pushboolean(l, (*book)->Open((const char*)lua_tostring(l, 2)));
	return 1;
}

int lua_workbook_save(lua_State* l)
{
	WorkBook** book = (WorkBook**)lua_touserdata(l, 1);
	luaL_argcheck(l, book != nullptr, 1, "invalid user data");
	lua_pushboolean(l, (*book)->Save((const char*)lua_tostring(l, 2)));
	return 1;
}

int lua_workbook_close(lua_State* l)
{
	WorkBook** book = (WorkBook**)lua_touserdata(l, 1);
	luaL_argcheck(l, book != nullptr, 1, "invalid user data");
	(*book)->Close();
	return 0;
}

int lua_workbook_get_sheet(lua_State* l)
{
	WorkBook** book = (WorkBook**)lua_touserdata(l, 1);
	luaL_argcheck(l, book != nullptr, 1, "invalid user data");
	lua_pushboolean(l, (*book)->GetSheet(lua_tonumber(l, 2)));
	return 1;
}

int lua_workbook_get_last_row(lua_State* l)
{
	WorkBook** book = (WorkBook**)lua_touserdata(l, 1);
	luaL_argcheck(l, book != nullptr, 1, "invalid user data");
	lua_pushnumber(l, (*book)->GetLastRow());
	return 1;
}

int lua_workbook_get_error_msg(lua_State* l)
{
	WorkBook** book = (WorkBook**)lua_touserdata(l, 1);
	luaL_argcheck(l, book != nullptr, 1, "invalid user data");

	lua_pushstring(l, (*book)->GetErrorMsg());
	return 1;
}


int lua_sheet_read_str(lua_State* l)
{
	WorkBook** book = (WorkBook**)lua_touserdata(l, 1);
	luaL_argcheck(l, book != nullptr, 1, "invalid user data");
	int row = lua_tonumber(l, 2);
	int col = lua_tonumber(l, 3);

	lua_pushstring(l, (const char*)(*book)->ReadStr(row, col));
	return 1;
}

int lua_sheet_write_str(lua_State* l)
{
	WorkBook** book = (WorkBook**)lua_touserdata(l, 1);
	luaL_argcheck(l, book != nullptr, 1, "invalid user data");
	int row = lua_tonumber(l, 2);
	int col = lua_tonumber(l, 3);
	const char* data = (const char*)lua_tostring(l, 4);

	lua_pushboolean(l, (*book)->WriteStr(row, col, data));
	return 1;
}

__declspec(dllexport) int luaopen_xlsEdit(lua_State * l)
{
	luaL_newmetatable(l, "WorkBookClass");
	lua_pushvalue(l, -1);
	lua_setfield(l, -2, "__index");
	luaL_setfuncs(l, lua_reg_workbook_funcs, 0);

	luaL_newlib(l, lua_reg_workbook_constructor_funcs);
	return 1;
}