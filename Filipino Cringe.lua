--[[
			Authour:		LUA_Writer
			Name:			FilipinoLUAU
			Version:		1.0.0
			LUAU Version:	
			Description:	This is for fun only. Para sa kasiyahan lang.
			/!\				Please do not use this for anything especially in creating a game.
							It requires LoadStringEnabled which may make your game vulnerable
							for exploits. You have been warned and by using this module
							you agree that the authour (LUA_Writer) has no responsibility for
							anything that may happen to you or your game.
--]]
--###############################################################################################################
--[+] INSTALLATIONS
--[=] SHELF
local KEYWORDS = {
	["tex"]			= 	"print",
	["goodness gracious"]			=	"warn",
	["saan ako nagkamali"]		=	"error",
	["meron pa bang paraan"]			=	"assert",
	
	["foreman"] 			= 	"function",
	["sakanya lamang"]			=	"for",
	["talaga lang"]				=	"in",
	["diwata"]			=	"pairs",
	["katapusan mo na"] 			= 	"end",
	["yoko"] 		= 	"return",
	["deadbat"]			=	"game",
	["lokal"]			=	"local",
	
	["kung maayos lang ako"]			=	"if",
	["dapat ba ako sakanya"]			=	"then",
	["pero"]			=	"else",
	["pero kung"]		=	"elseif",
	["kung wala edi wag na"]				=	"and",
	["o kaya"]				=	"or",
	
	["habang"]			=	"while",
	["gawin"]			=	"do",
	["masaktan"]			=	"repeat",
	["move-on"]			=	"continue",
	["wow peace"]		=	"until",
	
	
	["totoo"]			=	"true",
	["mali"]			=	"false",
	["ewan"]			=	"nil",
	
	["Kulay"]			=	"Color3",
	["bago"]			=	"new",
	
	["Mungkahi"]		=	"Instance",
	
	["sipnayan"]		=	"math",
	["atasan"]			=	"require",
	
	["skrip"]			=	"script",
	["texto"]			=	"string",
	["mesa"]			=	"table",
	["uri"]				=	"type",
	["uri ng"]			=	"typeof",
	
	["oras"]			=	"time",
	["trabaho"]			=	"task",
	
	["hintayin"]		=	"wait",
}

--[*] SHARED
--###############################################################################################################
local MainFrame = {}
function MainFrame.translate(source)
	for fil, lua in pairs(KEYWORDS) do
		source = source:gsub("%f[%w]" .. fil .. "%f[%W]", lua)
	end
	return source
end

--$$ META
local FilipinoLUAU = {}
FilipinoLUAU.__index 	= FilipinoLUAU

--// AUTHOUR_IS_NOT_RESPONSIBLE
FilipinoLUAU.AUTHOUR_IS_NOT_RESPONSIBLE = false

--// Main Caller
FilipinoLUAU.__call = function(self, source : string)
	if not self.AUTHOUR_IS_NOT_RESPONSIBLE then
		warn(`/!\ WARNING /!\ By using this script you have agreed that the authour of this module is not responsible for anything that will happen to your game. Set [FilipinoLUAU.AUTHOUR_IS_NOT_RESPONSIBLE] to [true] if you agree.`)
		error('🔒 PERMISSION DENIED 🔒')
	end
	local translated = MainFrame.translate(source)
	print("Translated code:\n", translated)

	local func, err = loadstring(translated)
	if not func then
		error(err)
	end

	return func()
end

return setmetatable({}, FilipinoLUAU)
