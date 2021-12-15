#ifndef XLSX_EDIT_REG_FUNCS_H
#define XLSX_EDIT_REG_FUNCS_H

extern "C" {
#include "lauxlib.h"
	__declspec(dllexport) int luaopen_xlsEdit(lua_State* L);
}

int lua_create_new_workbook(lua_State* l);

int lua_workbook_open(lua_State* l);
int lua_workbook_save(lua_State* l);
int lua_workbook_close(lua_State* l);
int lua_workbook_get_sheet(lua_State* l);
int lua_workbook_get_last_row(lua_State* l);
int lua_workbook_get_error_msg(lua_State* l);

int lua_sheet_read_str(lua_State* l);
int lua_sheet_write_str(lua_State* l);

static const luaL_Reg lua_reg_workbook_constructor_funcs[] =
{
	{"create", lua_create_new_workbook},
	{NULL, NULL},
};

static const luaL_Reg lua_reg_workbook_funcs[] =
{
	{"open", lua_workbook_open},
	{"save", lua_workbook_save},
	{"close", lua_workbook_close},
	{"getSheet", lua_workbook_get_sheet},
	{"getLastRow", lua_workbook_get_last_row},
	{"getErrorMsg", lua_workbook_get_error_msg},
	{"readStr", lua_sheet_read_str},
	{"writeStr", lua_sheet_write_str},
	{NULL, NULL},
};

#endif // !XLSX_EDIT_REG_FUNCS_H