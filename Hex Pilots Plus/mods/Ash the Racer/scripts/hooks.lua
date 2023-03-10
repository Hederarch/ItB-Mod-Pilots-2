--Mod
local mod = mod_loader.mods[modApi.currentMod]

--Paths
local scriptPath = mod.scriptPath
local resourcePath = mod.resourcePath

--------------------------------------------------- UTILITY / LOCAL FUNCTIONS ---------------------------------------------------
local function GetUser()
	for i = 0,2 do
		local mech = Board:GetPawn(i)
		if mech then
			--LOG("ability: " .. mech:GetAbility()) 
			if mech:IsAbility("HurtSpeed") then
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
			if mech:IsAbility("HurtSpeed") then
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
	mission.BaseSpeed = -1
	mission.SpeedSacrifice = 0
	end
----------------------------------------------- HOOKS HANDLERS -----------------------------------------------

local function SpeedUp(pawn)
	local mission = GetCurrentMission()
	Board:Ping(pawn:GetSpace(),GL_Color(250, 150, 50, 0.75))
	
	if mission then
	  mission.SpeedSacrifice = mission.SpeedSacrifice + 1
	end
	
	pawn:SetHealth(pawn:GetHealth() - 1)
	pawn:SetMoveSpeed(mission.BaseSpeed + mission.SpeedSacrifice)
end

local function SpeedContinue(pawn)
	local mission = GetCurrentMission()
	Board:Ping(pawn:GetSpace(),GL_Color(250, 150, 50, 0.75))
	pawn:SetMoveSpeed(mission.BaseSpeed + mission.SpeedSacrifice)
end

local RemoveEffect = function(mission)
	if IsUserPresent() then
		local user = GetUser()
		user:SetMoveSpeed(_G[user:GetType()].MoveSpeed)
	end
end

local ContinueEffect = function(mission)
	modApi:conditionalHook(
		function()
			return Board ~= nil
		end,
		function()
			local mission = GetCurrentMission()
			if IsUserPresent() then
				local user = GetUser()
				if mission.BaseSpeed == -1 then
					mission.BaseSpeed = user:GetMoveSpeed()
				end
				SpeedContinue(user)
			end
		end
	)

end

local ApplyEffect = function(mission)

	if IsUserPresent() and Game:GetTeamTurn() == TEAM_PLAYER then
		local user = GetUser()
		if mission.BaseSpeed == -1 then
			mission.BaseSpeed = _G[user:GetType()].MoveSpeed
		end
		
		if user:GetHealth() > 1 then
			SpeedUp(user)
		end
	end
end


----------------------------------------------- HOOKS / EVENTS SUBSCRIPTION -----------------------------------------------

local function EVENT_onModsLoaded()
	modApi:addNextTurnHook(ApplyEffect)
	modApi:addPostLoadGameHook(function(mission)
		ContinueEffect(mission)
	end)
	
	modApi:addMissionStartHook(function(mission)
		clearMissionData(mission)
	end)

	modApi:addMissionEndHook(function(mission)
		RemoveEffect(mission)
	end)

	modApi:addMissionNextPhaseCreatedHook(function(_, mission)
		clearMissionData(mission)
	end)
end

modApi.events.onModsLoaded:subscribe(EVENT_onModsLoaded)

