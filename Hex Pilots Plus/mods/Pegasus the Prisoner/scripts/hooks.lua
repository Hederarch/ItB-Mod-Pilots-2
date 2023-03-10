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
			if mech:IsAbility("CrossLaser") then
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
			if mech:IsAbility("CrossLaser") then
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
	
	local source = SpaceDamage(p1,0)
	source.sAnimation = "laser2_hit_a3"
	ret:AddDamage(source)
	
	ret:AddBounce(p1,-2)
	
	for dir = DIR_START, DIR_END do
		local target = p1 + DIR_VECTORS[dir]
		local endpoint = p1 + DIR_VECTORS[dir]
		
		while not Board:IsBuilding(endpoint) and not Board:IsPawnTeam(endpoint,TEAM_PLAYER) and Board:IsValid(endpoint) do
			endpoint = endpoint + DIR_VECTORS[dir]
		end
		
		if Board:IsPawnTeam(endpoint, TEAM_PLAYER) or Board:IsBuilding(endpoint) then
			HookAddLaser(ret, target, dir, false, endpoint)
			ret:AddBounce(endpoint,-2)
			local power = SpaceDamage(endpoint,0)
			power.sAnimation = "laser2_hit_a3"
			ret:AddDamage(power)
		end
	end
	return ret
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
					if Board:GetTurn() >= 1 and IsUserPresent() then
						local user_loc = GetUser():GetSpace()
						Board:AddEffect(GetSkillEffect(user_loc))
					end
				end 
			end 
			return oldfn(...) 
		end 
	end 
end

---------------------------------------------- YOINK! THANKS SUBSET DEVS! ------------------------------------------------

function HookAddLaser(ret,point,direction,queued,forced_end)
	local queued = queued or false
	local minDamage = 1
	local damage = 1
	local start = point - DIR_VECTORS[direction]
	--if forced_end ~= nil then
	--	LOG("Forced end = "..forced_end:GetString())
	--else
	--	LOG("No forced end!")
	--end
	while Board:IsValid(point) do
	
		local temp_damage = damage  --This is so that if damage is set to 0 because of an ally, it doesn't affect the damage calculation of the laser.
		
		if Board:IsPawnTeam(point, TEAM_PLAYER) or Board:IsBuilding(point) then
			temp_damage = DAMAGE_ZERO
		end
		
		local dam = SpaceDamage(point, temp_damage)
		
		
		-- if it's the end of the line (ha), add the laser art -- not pretty
		if forced_end == point or Board:IsBuilding(point) or Board:GetTerrain(point) == TERRAIN_MOUNTAIN or not Board:IsValid(point + DIR_VECTORS[direction]) then
			ret:AddProjectile(start,dam,"effects/laser2",FULL_DELAY)
			break
		else
			ret:AddDamage(dam)   --JUSTIN TEST
		end
		
		damage = damage - 1
		if damage < minDamage then damage = minDamage end
					
		point = point + DIR_VECTORS[direction]	
	end
end