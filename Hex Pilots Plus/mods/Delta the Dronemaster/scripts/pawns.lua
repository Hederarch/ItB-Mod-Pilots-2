Deploy_Manta = Pawn:new{
	Name = "Manta Drone",
	Health = 1,
	Image = "glider_support",
	MoveSpeed = 4,
	Flying = true,
	DefaultTeam = TEAM_PLAYER,
	SkillList = {"MantaShot","MantaRam"},
	ImpactMaterial = IMPACT_METAL,
	SoundLocation = "/mech/brute/tank",
	Corpse = false,
	Portrait = "npcs/Pilot_Deploy_Manta",
}
AddPawn("Deploy_Manta")

MantaShot = Skill:new {
	Name = "Homing Blast",
	Description = "Shoots a shocking projectile that phases through allies.",
	Rarity = 0,
	Limited = 1,
	Range = RANGE_PROJECTILE,
	PathSize = INT_MAX,
	Damage = 0,
	Class = "Unique",
	Icon = "weapons/glider_blast_icon.png",
	LaunchSound = "/weapons/stock_cannons",
	ImpactSound = "/impact/generic/explosion",
	ZoneTargeting = ZONE_DIR,
	TipImage = {
		Unit = Point(2,3),
		Building = Point(2,2),
		Enemy = Point(2,1),
		Target = Point(2,2),
		CustomPawn = "Deploy_Manta"
	}
}

local path = mod_loader.mods[modApi.currentMod].resourcePath
local files = {
	"icon_swap_fire_glowA.png",
	"icon_swap_fire_glowB.png",
	"icon_swap_fire_off_glowA.png",
	"icon_swap_fire_off_glowB.png",
}
for _, file in ipairs(files) do
	modApi:appendAsset("img/combat/icons/".. file, path.. "img/combat/icons/" .. file)
	Location["combat/icons/"..file] = Point(-10,9)
end

function MantaShot:GetSkillEffect(p1,p2)
	local ret = SkillEffect()
	local target = GetProjectileEnd(p1,p2,PATH_PHASING)
	local lock = SpaceDamage(target,0)
	lock.sAnimation = "DroneTriLock"
	ret:AddDamage(lock)
	ret:AddDelay(0.4)
	local dam = SpaceDamage(target,0,DIR_FLIP)
	local dpawn = Board:GetPawn(target)
	if not Board:IsTerrain(dam.loc,TERRAIN_WATER) and Board:IsPawnSpace(dam.loc) or Board:IsTerrain(dam.loc,TERRAIN_WATER) and Board:IsPawnSpace(dam.loc) and dpawn:IsFlying() then
		dam.sImageMark = "combat/icons/icon_swap_fire_glowA.png"
	elseif not Board:IsTerrain(dam.loc,TERRAIN_WATER) and not Board:IsPawnSpace(dam.loc) then
		dam.sImageMark = "combat/icons/icon_swap_fire_off_glowB.png"
	elseif Board:IsTerrain(dam.loc,TERRAIN_WATER) and Board:IsPawnSpace(dam.loc) and not dpawn:IsFlying() then
		dam.sImageMark = "combat/icons/icon_swap_fire_glowB.png"
	elseif Board:IsTerrain(dam.loc,TERRAIN_WATER) and not Board:IsPawnSpace(dam.loc) then
		dam.sImageMark = "combat/icons/icon_swap_fire_off_glowA.png"
	end
	dam.iFire = EFFECT_CREATE
	ret:AddProjectile(dam,"effects/shot_phaseshot")
	return ret
end

MantaRam = Skill:new{ 
	Name = "Ramming Speed",
	Description = "Damages and pushes an adjacent unit, but destroys the drone.",
	Rarity = 0,
	Damage = 0,
	Class = "Unique",
	Icon = "weapons/glider_ram_icon.png",
	Explosion = "",
	LaunchSound = "/weapons/titan_fist",
	Range = 1, -- Tooltip?
	PathSize = 1,
	Damage = 2,
	Push = 1, --Mostly for tooltip, but you could turn it off for some unknown reason
	PowerCost = 0, --AE Change
		TipImage = {
		Unit = Point(2,2),
		Enemy = Point(2,1),
		Target = Point(2,1),
		CustomPawn = "Deploy_Manta"
	}
}
				
function MantaRam:GetSkillEffect(p1, p2)
	local ret = SkillEffect()
	local direction = GetDirection(p2 - p1)	
	local damage = SpaceDamage(p2,1,direction)
	ret:AddMelee(p2 - DIR_VECTORS[direction], damage)
	local kamikaze = SpaceDamage(p1,1)
	kamikaze.iDamage = DAMAGE_DEATH
	ret:AddDamage(kamikaze)
	return ret
end	
