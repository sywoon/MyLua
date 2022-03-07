#ifndef _SIN_H_
#define _SIN_H_

#ifdef DLL_EXPORT
#define DLL_API __declspec(dllexport)
#else
#define DLL_API __declspec(dllimport)
#endif


DLL_API int luaopen_ctimer(lua_State* L);


#endif