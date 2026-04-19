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
	["ᜁᜉᜃᜒᜆ"] = "print",          -- ipakita
["ᜊᜊᜎ"] = "warn",              -- babala
["ᜃᜋᜎᜒᜀᜈ"] = "error",        -- kamalian
["ᜁᜄᜒᜁᜆ"] = "assert",        -- igiit

["ᜄᜏᜁᜈ"] = "function",       -- gawain
["ᜉᜇ"] = "for",               -- para
["ᜐ"] = "in",                 -- sa
["ᜉᜇᜒᜐ"] = "pairs",          -- pares
["ᜏᜃᜐ"] = "end",             -- wakas
["ᜉᜊᜎᜒᜃ"] = "return",       -- pabalik
["ᜎᜇᜓ"] = "game",            -- laro
["ᜎᜓᜃᜎ"] = "local",         -- lokal

["ᜃᜓᜅ"] = "if",               -- kung
["ᜇᜉᜆ"] = "then",           -- dapat
["ᜉᜒᜇᜓ"] = "else",          -- pero
["ᜉᜒᜇᜓ ᜃᜓᜅ"] = "elseif",    -- pero kung
["ᜀᜆ"] = "and",              -- at
["ᜂ"] = "or",                -- o

["ᜑᜊᜅ"] = "while",          -- habang
["ᜄᜏᜒᜈ"] = "do",            -- gawin
["ᜂᜎᜒᜆᜒᜈ"] = "repeat",     -- ulitin
["ᜐᜓᜋᜓᜈᜓᜇ"] = "continue",  -- sumunod
["ᜑᜅᜄᜅ"] = "until",        -- hanggang

["ᜆᜓᜆᜓᜂ"] = "true",        -- totoo
["ᜋᜎᜒ"] = "false",         -- mali
["ᜁᜏᜈ"] = "nil",           -- ewan

["ᜃᜓᜎᜌ"] = "Color3",       -- Kulay
["ᜊᜄᜓ"] = "new",           -- bago

["ᜋᜓᜅ᜔ᜃᜑᜒ"] = "Instance", -- Mungkahi

["ᜐᜒᜉ᜔ᜈᜌᜈ"] = "math",    -- sipnayan
["ᜀᜆᜐᜈ"] = "require",     -- atasan

["ᜐ᜔ᜃ᜔ᜇᜒᜉ᜔"] = "script",  -- skrip (approx)
["ᜆᜒᜃ᜔ᜐ᜔ᜆᜓ"] = "string", -- texto (approx)
["ᜋᜒᜐ"] = "table",        -- mesa
["ᜂᜇᜒ"] = "type",         -- uri
["ᜂᜇᜒ ᜅ"] = "typeof",     -- uri ng

["ᜂᜇᜐ"] = "time",         -- oras
["ᜆ᜔ᜇᜊᜑᜓ"] = "task",     -- trabaho (approx)

["ᜑᜒᜈ᜔ᜆᜌᜒᜈ"] = "wait",  -- hintayin
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
