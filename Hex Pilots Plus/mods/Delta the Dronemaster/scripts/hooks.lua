--Mod
local mod = mod_loader.mods[modApi.currentMod]

--Paths
local scriptPath = mod.scriptPath
local resourcePath = mod.resourcePath

local this = {}

--------------------------------------------------- UTILITY / LOCAL FUNCTIONS ---------------------------------------------------
local function GetUser()
	for i = 0,2 do
		local mech = Board:GetPawn(i)
		if mech then
			--LOG("ability: " .. mech:GetAbility()) 
			if mech:IsAbility("MantaSupport") then
				--LOG("mech has the right skill!")
				return Board:GetPawn(i)
			end
		end
	end
	return nil
end
local function GetNotUser()
	for i = 0,2 do
		local mech = Board:GetPawn(i)
		if mech then
			if not mech:IsAbility("Nico_Orbitalskill") then
				return Board:GetPawn(i)
			end
		end
	end
	return nil
end

local function IsUserPresent()
	if Board == nil then
		return false
	end
	--LOG("[APOLLO] IsApolloPresent()")
	for i = 0, 2 do
		local mech = Board:GetPawn(i)
		--LOG("i: " .. tostring(i))
		if mech then
			--LOG("ability: " .. mech:GetAbility()) 
			if mech:IsAbility("MantaSupport") then
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

local function getUnoccupiedSpace(offset) --offset added to help randomness
	local ret = Point(-1,-1)
	local size = Board:GetSize()
	while ret == Point(-1,-1) do
		math.randomseed(os.time() - offset)
		local x = math.random(0,size.x - 1)
		local y = math.random(0,size.y - 1)
		if not Board:IsBlocked(Point(x,y),PATH_GROUND) or Board:IsPawnSpace(Point(x,y)) then
			ret = Point(x,y)
		end
	end
	return ret
end
----------------------------------------------- HOOKS HANDLERS -----------------------------------------------
local function PawnKilled(mission, pawn)
	if pawn:GetType() == "Deploy_Manta" then
		Board:AddAnimation(pawn:GetSpace(),"ExploAir2",ANIM_DELAY)
	end
end

local function GetSkillEffect(p1)
	local ret = SkillEffect()
	
	local targets = extract_table(general_DiamondTarget(p1, 3))
    local i = 1
        while Board:IsBlocked(targets[i], PATH_FLYER) do
            i = i + 1
        end
    local deploy = SpaceDamage(targets[i],0)
		local lock = SpaceDamage(targets[i],0)
		lock.sAnimation = "DroneTriLock"
		ret:AddDamage(lock)
	ret:AddDelay(0.4)
	ret:AddAirstrike(targets[i],"units/mission/glider_support_ns.png")
	deploy.sPawn = "Deploy_Manta"
	ret:AddDropper(deploy,"units/mission/glider_support_ns.png")
	return ret
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
		Board:AddEffect(GetSkillEffect((GetUser():GetSpace()) or (GetNotUser():GetSpace())))
	end
)
end

local HOOK_onMissionStarted = function(mission)
	if IsUserPresent() then
		DelayEffect()	
	end
end

----------------------------------------------- HOOKS / EVENTS SUBSCRIPTION -----------------------------------------------

local function EVENT_onModsLoaded()
	modApi:addMissionStartHook(HOOK_onMissionStarted)
	modApi:addMissionNextPhaseCreatedHook(DelayEffect)
end

modApi.events.onModsLoaded:subscribe(EVENT_onModsLoaded)

function this:load(Hedera_Glider_ModApiExt)
  Hedera_Glider_ModApiExt:addPawnKilledHook(PawnKilled)
end

return this