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
		local damage = SpaceDamage(Point(0,0),0)
		damage.iFire = 1
		damage.sAnimation = "ExploSunbeam"
		
		local shine = SpaceDamage(p1,0)
		shine.sAnimation = "ExploSunrise"
		ret:AddDamage(shine)
		
		ret:AddBoardShake(0.1)
		
		local pawnList = extract_table(Board:GetPawns(TEAM_ANY))
		for i = 1, #pawnList do
			local unit = Board:GetPawn(pawnList[i])
			local space = unit:GetSpace()
			if unit:GetTeam() ~= TEAM_PLAYER and Board:IsValid(space) then
				damage.loc = space
				ret:AddDamage(damage)
				ret:AddDelay(0.1)
			end
		end
		
		if Board then Board:AddEffect(ret) end-- prevent possible crash when player backs out to menu
	end
end

----------------------------------------------- HOOKS / EVENTS SUBSCRIPTION -----------------------------------------------

modApi.events.onPawnLanded:subscribe(Hedera_Sunrise)
-- the argument of this argument function is an integer (the ID of the Mech that has landed)
