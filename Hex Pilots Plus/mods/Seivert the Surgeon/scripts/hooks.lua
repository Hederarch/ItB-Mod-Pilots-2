--Mod
local mod = mod_loader.mods[modApi.currentMod]

--Paths
local scriptPath = mod.scriptPath
local resourcePath = mod.resourcePath


local this = {}

modApi:appendAsset("img/effects/explo_heal_echo.png", resourcePath .."img/effects/explo_heal_echo.png")

ANIMS.HealEcho = Animation:new { 
	Image = "effects/explo_heal_echo.png",
	NumFrames = 13,
	Time = 0.1,
	
	PosX = -33,
	PosY = -14
}

--------------------------------------------------- UTILITY / LOCAL FUNCTIONS ---------------------------------------------------
local function IsUserPresent()
	for i = 0, 2 do
		local mech = Board:GetPawn(i)
		if mech then
			--LOG("ability: " .. mech:GetAbility()) 
			if mech:IsAbility("BonusHeal") then
				--LOG("mech has the right skill!")
				return true
			else
				--LOG("not the right skill :(")
			end
		else
			--LOG("Mech doesn't exist!!")
		end
	end
	return false
end

local function GetUser()
	for i = 0,2 do
		local mech = Board:GetPawn(i)
		if mech then
			--LOG("ability: " .. mech:GetAbility()) 
			if mech:IsAbility("BonusHeal") then
				--LOG("mech has the right skill!")
				return Board:GetPawn(i)
			end
		end
	end
	return nil
end
----------------------------------------------- HOOKS HANDLERS -----------------------------------------------

local function GetSkillEffect(p1)
	local ret = SkillEffect()
	--ret:AddBurst(p1,"Emitter_Burst_Heal",DIR_NONE)
	local bonus = SpaceDamage(p1,-1)
	bonus.sAnimation = "HealEcho"
	ret:AddDamage(bonus)
	return ret
end

local onHeal = function(mission, pawn, healingTaken)
	if IsUserPresent() then
		local user = GetUser()
		if pawn:GetId() == user:GetId() then
			if not mission.PreventHeal then
				mission.PreventHeal = true
				Board:AddEffect(GetSkillEffect(user:GetSpace()))
				modApi:scheduleHook(400, function()
					mission.PreventHeal = false
				end)
			end
		end
	end
end

----------------------------------------------- HOOKS / EVENTS SUBSCRIPTION -----------------------------------------------

function this:load(Hedera_Dcotor_ModApiExt)
  Hedera_Dcotor_ModApiExt:addPawnHealedHook(onHeal)
end

return this