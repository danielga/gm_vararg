#include <GarrysMod/Lua/Interface.h>

extern "C" int luaopen_vararg( lua_State * );

GMOD_MODULE_OPEN( )
{
	if( luaopen_vararg( state ) == 1 )
	{
		LUA->Push( -1 );
		LUA->SetField( GarrysMod::Lua::INDEX_GLOBAL, "vararg" );
	}

	return 1;
}
 
GMOD_MODULE_CLOSE( )
{
	LUA->PushNil( );
	LUA->SetField( GarrysMod::Lua::INDEX_GLOBAL, "vararg" );
	return 0;
}
