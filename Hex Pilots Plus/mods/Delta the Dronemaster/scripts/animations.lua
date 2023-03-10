local path = mod_loader.mods[modApi.currentMod].resourcePath
BaseUnit = ANIMS.Animation:new { Image = "units/player/mech_punch_1.png", PosX = -19, PosY = -4, Loop = true, Time = 0.3 }

modApi:appendAsset("img/effects/glider_support_upshot.png", path .."img/units/glider_support_upshot.png")
modApi:appendAsset("img/units/mission/glider_support.png", path .."img/units/glider_support.png")
modApi:appendAsset("img/units/mission/glider_support_ns.png", path .."img/units/glider_support_ns.png")
modApi:appendAsset("img/units/mission/glider_support_a.png", path .."img/units/glider_support_a.png")

ANIMS.glider_support = 	BaseUnit:new{ Image = "units/mission/glider_support_ns.png", PosX = -24, PosY = -8 }
ANIMS.glider_supporta = BaseUnit:new{ Image = "units/mission/glider_support_a.png", PosX = -24, PosY = -8, NumFrames = 4 }

modApi:appendAsset("img/effects/drone_target_lock.png", path .."img/effects/drone_target_lock.png")

ANIMS.DroneTriLock = Animation:new{
	Image = "effects/drone_target_lock.png",
	NumFrames = 18,
	Time = 0.08,
	
	PosX = -15,	
	PosY = 4,
}

modApi:appendAsset("img/weapons/glider_blast_icon.png", path .."img/weapons/glider_blast_icon.png")
modApi:appendAsset("img/weapons/glider_ram_icon.png", path .."img/weapons/glider_ram_icon.png")
