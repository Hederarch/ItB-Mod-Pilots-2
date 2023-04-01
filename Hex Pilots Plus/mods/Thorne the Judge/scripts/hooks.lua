--Mod
local mod = mod_loader.mods[modApi.currentMod]

--Paths
local scriptPath = mod.scriptPath
local resourcePath = mod.resourcePath

modApi:appendAsset("img/effects/explo_sunrise.png", resourcePath .."img/effects/explo_sunrise.png")
modApi:appendAsset("img/effects/explo_sunbeam.png", resourcePath .."img/effects/explo_sunbeam.png")

ANIMS.ExploSunrise = Animation:new { 
	Image = "effects/explo_sunrise.png",
	NumFrames = 10,
	Time = 0.05,
	
	PosX = -33,
	PosY = -14
}
ANIMS.ExploSunbeam = Animation:new{
	Image = "effects/explo_sunbeam.png",
	NumFrames = 8,
	Time = 0.2,
	PosX = -26,
	PosY = -55,
	Loop = false
}
----------------------------------------------- HOOKS HANDLERS -----------------------------------------------

local function Hedera_Sunrise(pawnId)
	local pawn = Board:GetPawn(pawnId)
	local p1 = pawn:GetSpace()
	local ret = SkillEffect()
	
	if pawn and pawn:IsAbility("Mourningstar") then
		if Board then Board:AddAnimation(p1,"ExploSunrise",0) Board:StartShake(0.1) end-- prevent possible crash when player backs out to menu
		--I am not sure adding a shake is necessary given the deployment also creates a board shake. perhaps this is a remnant of when you weren't able to make this exactly a deployment effect? if so then we should remove it.
		local pawnList = extract_table(Board:GetPawns(TEAM_ANY))
		for i = 1, #pawnList do
			local unit = Board:GetPawn(pawnList[i])
			local space = unit:GetSpace()
			if unit:GetTeam() ~= TEAM_PLAYER and Board:IsValid(space) then
				if (GetCurrentMission().ID == "Mission_FreezeBots" and unit:GetDefaultFaction() ~= FACTION_BOTS) or GetCurrentMission().ID ~= "Mission_FreezeBots" then--if you don't think this is appropriate for whatever balance reasons remove the condition, but I personally think that it should not screw you over on this mission (same line of reasoning as Void Shocker). If you want to go all the way, then don't check for the mission, since it's a massive advantage to the player to insta-kill Bots, imho. But YMMV.
					modApi:scheduleHook(100*i, function()
						if Game then Game:TriggerSound("/props/fire_damage") end
						if Board then Board:AddAnimation(space,"ExploSunbeam",0) Board:SetFire(space,true) end
					end)--100ms between each one seems to be good, but adjust it as you see fit. If you want the first one to be delayed differently, replace it with this exact expression: (i>1 and 100*i) or first_delay
					--where first_delay is whatever value in ms you want it to be.
				end
			end
		end
	end
end

----------------------------------------------- HOOKS / EVENTS SUBSCRIPTION -----------------------------------------------

modApi.events.onPawnLanded:subscribe(Hedera_Sunrise)
-- the argument of this argument function is an integer (the ID of the Mech that has landed)
