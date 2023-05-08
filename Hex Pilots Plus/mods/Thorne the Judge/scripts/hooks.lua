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
			if unit:GetTeam() ~= TEAM_PLAYER and Board:IsValid(space) and unit:GetDefaultFaction() ~= FACTION_BOTS then
			--Your description says Add Fire to all Vek, which excludes Bots. Also better since Boom Bots are a thing, and would cause you to instantly fail the Freeze and Defend Robots Mission.
				modApi:scheduleHook((i>1 and 100*i) or 0, function()
					if Game then Game:TriggerSound("/props/fire_damage") end
					if Board then Board:AddAnimation(space,"ExploSunbeam",0) Board:SetFire(space,true) end
				end)--100ms between each one seems to be good, but adjust it as you see fit. If you want the first one to be delayed differently, replace it with this exact expression: (i>1 and 100*i) or first_delay
				--where first_delay is whatever value in ms you want it to be.
			end
		end
	end
end

local function Hedera_Sunrise_Volcano(prevMission, nextMission)
	local j = -1
	local Thorne = nil
	modApi:scheduleHook(3500, function()
		if Game == nil then return end
		for i = 0,2 do
			local pawn = Game:GetPawn(i)
			if pawn and pawn:IsAbility("Mourningstar") then
				j = i
			end
		end
		Thorne = Game:GetPawn(j)
		modApi:conditionalHook(
			function()
				return Game == nil or (Thorne ~= nil and Thorne:GetSpace() ~= Point(-1,-1) and not Thorne:IsBusy()) or (Game:GetPawn(2):GetSpace() ~= Point(-1,-1) and not Game:GetPawn(2):IsBusy())
			end,
			function()
				if Thorne ~= nil then
				--simplify and just call the other function
					Hedera_Sunrise(j)
				end
			end
		)
	end)
end

----------------------------------------------- HOOKS / EVENTS SUBSCRIPTION -----------------------------------------------

local function EVENT_onModsLoaded()
	modApi:addMissionNextPhaseCreatedHook(Hedera_Sunrise_Volcano)
end
modApi.events.onModsLoaded:subscribe(EVENT_onModsLoaded)
modApi.events.onPawnLanded:subscribe(Hedera_Sunrise)
-- the argument of this argument function is an integer (the ID of the Mech that has landed)
