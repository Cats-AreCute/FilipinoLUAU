# Kuya?
> Please take note that this is for Roblox only. Not for other stuffs.

# Set Up
⚠️ Please take note that this is just for entertainment purposes only. The script requires `LoadStringEnabled` in ServerScriptService to be `enabled`.
We advise you to use this system for a small project only and not for game purposes. The author (@LUA_Writer on Roblox) will not be responsible for anything wrong that has happened with your game.
1. Create a module script in `ReplicatedStorage`, call it whatever you want.
2. Paste this [script](https://github.com/Cats-AreCute/FilipinoLUAU/blob/main/main.lua) in the Module.
3. Require the module script
4. Add this:
```lua
local FIL_LUAU = require(game.ReplicatedStorage.Languages.FilipinoLUAU)

FIL_LUAU.AUTHOUR_IS_NOT_RESPONSIBLE = true

FIL_LUAU([[
ipakita("Hello world") -- Dito malalagay lahat ng script mo.
]])
```
5. If you want more of this, help out translate. Thanks.

# Halimbawa (Examples):
**Timer:**
```lua
lokal bilang = 30

habang totoo gawin
	bilang -= 1
	ipakita(bilang)
	
	hintayin(1)
wakas
```
