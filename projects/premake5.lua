newoption({
	trigger = "gmcommon",
	description = "Sets the path to the garrysmod_common (https://github.com/danielga/garrysmod_common) directory",
	value = "path to garrysmod_common directory"
})

local gmcommon = _OPTIONS.gmcommon or os.getenv("GARRYSMOD_COMMON")
if gmcommon == nil then
	error("you didn't provide a path to your garrysmod_common (https://github.com/danielga/garrysmod_common) directory")
end

include(gmcommon)

local LUAVARARG_DIRECTORY = "../lua-vararg"

CreateWorkspace({name = "vararg"})
	CreateProject({serverside = true})
		IncludeLuaShared()
		files(LUAVARARG_DIRECTORY .. "/vararg.c")

	CreateProject({serverside = false})
		IncludeLuaShared()
		files(LUAVARARG_DIRECTORY .. "/vararg.c")
