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
--------------------------------------------------- UTILITY / LOCAL FUNCTIONS ---------------------------------------------------
local function GetUser()
	for i = 0,2 do
		local mech = Board:GetPawn(i)
		if mech then
			--LOG("ability: " .. mech:GetAbility()) 
			if mech:IsAbility("Mourningstar") then
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
			if mech:IsAbility("Mourningstar") then
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
----------------------------------------------- HOOKS HANDLERS -----------------------------------------------

local function GetSkillEffect(p1)
	local ret = SkillEffect()
	local damage = SpaceDamage(Point(0,0),0)
	damage.iFire = 1
	damage.sAnimation = "ExploSunbeam"
	
	local shine = SpaceDamage(p1,0)
	shine.sAnimation = "ExploSunrise"
	ret:AddDamage(shine)
	
	ret:AddBoardShake(0.1)
	
	local board_size = Board:GetSize()
	for i = 0, board_size.x - 1 do
		for j = 0, board_size.y - 1 do
			if Board:IsValid(Point(i,j)) and not Board:IsBuilding(Point(i,j)) then
				if Board:IsPawnSpace(Point(i,j)) and not Board:IsPawnTeam(Point(i,j),TEAM_PLAYER) then
					damage.loc = Point(i,j)
					ret:AddDamage(damage)
					ret:AddDelay(0.1)
				end
			end
		end
	end
	
	return ret
end

local ApplyEffect = function(mission)
	if IsUserPresent() and Board:GetTurn() < 1 then
		local user_loc = GetUser():GetSpace()
		Board:AddEffect(GetSkillEffect(user_loc))
	end
end

local function DelayEffect()
modApi:conditionalHook(
	function()
		if IsUserPresent() then
			return Board:GetTurn() == 1
		end
		return false
	end,
	function()
		ApplyEffect()
	end
)
end

----------------------------------------------- HOOKS / EVENTS SUBSCRIPTION -----------------------------------------------

--this section detects the event that triggers instantly when End Turn is pressed (PARADOXICA)
EXCL = {
	"GetAmbience", 
	"GetBonusStatus", 
	"BaseUpdate", 
	"UpdateMission", 
	"GetCustomTile", 
	"GetDamage", 
	"GetTurnLimit", 
	"BaseObjectives",
	"UpdateObjectives",
} 

for i,v in pairs(Mission) do 
	if type(v) == 'function' then 
		local oldfn = v 
		Mission[i] = function(...) 
			if not list_contains(_G["EXCL"], i) then 
				if i == "IsEnvironmentEffect" then
					ApplyEffect()
				end 
			end 
			return oldfn(...) 
		end 
	end 
end