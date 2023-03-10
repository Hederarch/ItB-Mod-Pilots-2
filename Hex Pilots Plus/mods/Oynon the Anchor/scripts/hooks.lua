--Mod
local mod = mod_loader.mods[modApi.currentMod]

--Paths
local scriptPath = mod.scriptPath
local resourcePath = mod.resourcePath

modApi:appendAsset("img/effects/explo_halo.png", resourcePath .."img/effects/explo_halo.png")

ANIMS.ShieldHalo = Animation:new { 
	Image = "effects/explo_halo.png",
	NumFrames = 14,
	Time = 0.1,
	
	PosX = -33,
	PosY = -14
}

--------------------------------------------------- UTILITY / LOCAL FUNCTIONS ---------------------------------------------------
local function GetUser()
	for i = 0,2 do
		local mech = Board:GetPawn(i)
		if mech then
			--LOG("ability: " .. mech:GetAbility()) 
			if mech:IsAbility("WaitShield") then
				--LOG("mech has the right skill!")
				return Board:GetPawn(i)
			end
		end
	end
	return nil
end

local function IsUserPresent()
	--LOG("[APOLLO] IsApolloPresent()")
	for i = 0, 2 do
		local mech = Board:GetPawn(i)
		--LOG("i: " .. tostring(i))
		if mech then
			--LOG("ability: " .. mech:GetAbility()) 
			if mech:IsAbility("WaitShield") then
				--LOG("mech has right skill!")
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

	local function clearMissionData(mission)
	mission.LastX = -1
	mission.LastY = -1
	end
----------------------------------------------- HOOKS HANDLERS -----------------------------------------------

local CompareMovement = function(mission)

	if IsUserPresent() then
		local user = GetUser()
		if Game:GetTeamTurn() == TEAM_PLAYER then
			mission.LastX = user:GetSpace().x
			mission.LastY = user:GetSpace().y
		else
			if Board:GetDistance(Point(mission.LastX,mission.LastY),user:GetSpace(),1) <= 1 then -- no idea what the last int argument does but game demands it be there
				Board:AddAnimation(user:GetSpace(),"ShieldHalo",FULL_DELAY)
				Board:AddShield(user:GetSpace())
			end
		end
	end
end


----------------------------------------------- HOOKS / EVENTS SUBSCRIPTION -----------------------------------------------

local function EVENT_onModsLoaded()
	modApi:addNextTurnHook(CompareMovement)
	
	modApi:addMissionStartHook(function(mission)
		clearMissionData(mission)
	end)

	modApi:addMissionNextPhaseCreatedHook(function(_, mission)
		clearMissionData(mission)
	end)
end

modApi.events.onModsLoaded:subscribe(EVENT_onModsLoaded)

