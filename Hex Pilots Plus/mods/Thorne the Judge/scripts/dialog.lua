
-- Adds a personality without the use of a csv file.
-- Table of responses to various triggers.
return {
	-- Game States
	Gamestart = {"This is going to be so much fun!","It's an honor to serve, commander.","We shall cleanse the Vek from these islands once and for all.","My righteous mission begins at last."},
	FTL_Found = {"This new ally is strange, do we dare trust them?"},
	--FTL_Start = {},
	Gamestart_PostVictory = {"My righteous mission is never finished."},
	Death_Revived = {"BEHOLD, THE RADIANT DAWN!!!"},
	Death_Main = {"Leave me here. I must rest.","Enough. I must rest."},
	Death_Response = {"You have my blessing, #main_first.","Rest well, #main_first.","Farewell, #main_first."},
	Death_Response_AI = {"You have my blessing, brother.","Rest well, my brother.","Farewell, my brother."},
	TimeTravel_Win = {"At last, divine justice!"},
	Gameover_Start = {"Everything's going dark...","The lights are fading fast.","Dusk has overtaken us."},
	Gameover_Response = {"Never surrender, #squad! We will return stronger!","Another world slips into shadow.","We've done what we can here. May this world go peacefully."},
	
	-- UI Barks
	Upgrade_PowerWeapon = {"A worthy vessel for my retribution.","Such a fine tool of justice.","I can see it in action already. Righteous."},
	Upgrade_NoWeapon = {"Return my tools to me. My mission is incomplete."},
	Upgrade_PowerGeneric = {"Its glow is comforting, isn't it?","Thank you.","These cores are charming. Like little suns."},
	
	-- Mid-Battle
	MissionStart = {"Justice has arrived!","We come as a gift from the heavens!","Do not fear, your saviors are here!","Cower, Vek! Your end is upon you!"},
	Mission_ResetTurn = {"Our errors have been forgiven.","Our mistakes are now forgiven.","We return wiser than before."},
	MissionEnd_Dead = {"Our justice is absolute.","Not one Vek remains. Righteous.","You can relax now, everyone."},
	MissionEnd_Retreat = {"Limp away while you still can.","You can run, but this isn't over.","We will find them again. And we'll finish the fight."},

	MissionFinal_Start = {"Prepare yourselves! Get angry!","Prepare yourselves! The hour of judgement is here!","Feed the fire within! Burn the Vek with your fury!"},
	MissionFinal_StartResponse = {"We will not fail. Not now.","Feed the fire within! Burn the Vek with your fury!"},
	--MissionFinal_FallStart = {},
	MissionFinal_FallResponse = {"This island will not devour us!","Don't stop fighting now!","An now we slay it from within!"},
	--MissionFinal_Pylons = {},
	MissionFinal_Bomb = {"They've got the whole world outnumbered down here.","It'll take a miracle to save us now."},
	--MissionFinal_BombResponse = {},
	MissionFinal_CaveStart = {"It's like a little sun. Defend it at all costs!","We've got the sun on our side now. Don't waste it.","Get angry little sun! Burn them all with your fury!"},
	--MissionFinal_BombDestroyed = {},
	MissionFinal_BombArmed = {"The end is upon us!","Justice is here!"},

	PodIncoming = {"A relic from the sky!","A relic from the heavens!"},
	PodResponse = {"This will be vital for our mission.","We cannot let it fall into their claws."},
	PodCollected_Self = {"Relic secured.","Relic collected."},
	PodDestroyed_Obs = {"...Maybe it's still okay.","It's still okay, right?","Wait, where's the pod?"},
	Secret_DeviceSeen_Mountain = {"There's a light within the mountain!"},
	Secret_DeviceSeen_Ice = {"There's a light there in the water!"},
	Secret_DeviceUsed = {"The light! It calls out to the sky!"},
	Secret_Arriving = {"Something bizarre is on its way."},
	Emerge_Detected = {"More Vek from the depths.","They've brought reinforcements."},
	Emerge_Success = {"They're under the sky now. Let them burn!","They've reached the surface. Now crush them back down!"},
	Emerge_FailedMech = {"I'll stomp you to hell if I have to.","And stay down!"},
	Emerge_FailedVek = {"Maybe they'll keep each other busy.","Maybe it'll drag the other one down."},

	-- Mech State
	Mech_LowHealth = {"I will not be extinguished!","I will not be slain!"},
	Mech_Webbed = {"Get your claws off me!","I will not be stopped!"},
	Mech_Shielded = {"I'm invincible!","I'm untouchable!"},
	Mech_Repaired = {"My vigor has returned!","My flames grow hotter!"},
	Pilot_Level_Self = {"It's an honor to serve, commander."},
	Pilot_Level_Obs = {"You've learned well, #main_first."},
	Mech_ShieldDown = {"Back to mortality.","It was fun while it lasted.","My shield is extinguished."},

	-- Damage Done
	Vek_Drown = {"Vek extinguished.","Back to the depths with you!","Let's send a few more after it."},
	Vek_Fall = {"Vek discarded.","Back to the depths with you!","Let's send a few more after it."},
	Vek_Smoke = {"I hope it chokes.","Strike while it's dazed!"},
	Vek_Frozen = {"It's still alive in there? How?","I prefer burning, but whatever works."},
	VekKilled_Self = {"Feel the wrath of the dawn!","Our strikes must be absolute.","Back to the depths with you.","Righteous."},
	VekKilled_Obs = {"Yes! Unleash your anger!","Feel the righteous fury boil within!","Yes! Feel the rush of retribution!"},
	VekKilled_Vek = {"We've broken its spirit.","They don't care what they kill, do they?","At least it's dead."},

	DoubleVekKill_Self = {"They will learn to fear us. If any are left afterward."},
	DoubleVekKill_Obs = {"Yes! Unleash your anger!","Feel the righteous fury boil within!","Yes! Feel the rush of retribution!"},
	DoubleVekKill_Vek = {"That's just barbaric."},

	MntDestroyed_Self = {"Strike through the earth itelf!","Focus your power! Shatter the earth!", "Strike at the cracks! Reduce it to dust!"},
	MntDestroyed_Obs = {"Yes! Release your fury!","Yes! Strike through the earth itelf!"},
	MntDestroyed_Vek = {"They don't care what they kill, do they?","At least it's not a building."},

	PowerCritical = {"The light is fading. Defend the grid!","Dusk is coming. Defend the grid!"},
	Bldg_Destroyed_Self = {"Forgive me.","A reminder of our mission. Let it be the last."},
	Bldg_Destroyed_Obs = {"Control yourself!","Look what you've done."},
	Bldg_Destroyed_Vek = {"Get angry! And get revenge!","A reminder of our mission. Let it be the last.","Don't just stand there! Get mad!"},
	Bldg_Resisted = {"A miracle! We must not waste it.","The righteous prevails today.","A great mercy. We must not waste it!"},


	-- Shared Missions
	--[[Mission_Train_TrainStopped = {},
	Mission_Train_TrainDestroyed = {},
	Mission_Block_Reminder = {},

	-- Archive
	Mission_Airstrike_Incoming = {},
	Mission_Tanks_Activated = {},
	Mission_Tanks_PartialActivated = {},
	Mission_Dam_Reminder = {},
	Mission_Dam_Destroyed = {},
	Mission_Satellite_Destroyed = {},
	Mission_Satellite_Imminent = {},
	Mission_Satellite_Launch = {},
	Mission_Mines_Vek = {},

	-- RST
	Mission_Terraform_Destroyed = {},
	Mission_Terraform_Attacks = {},
	Mission_Cataclysm_Falling = {},
	Mission_Lightning_Strike_Vek = {},
	Mission_Solar_Destroyed = {},
	Mission_Force_Reminder = {},

	-- Pinnacle
	Mission_Freeze_Mines_Vek = {},
	Mission_Factory_Destroyed = {},
	Mission_Factory_Spawning = {},
	Mission_Reactivation_Thawed = {},
	Mission_SnowStorm_FrozenVek = {},
	Mission_SnowStorm_FrozenMech = {},
	BotKilled_Self = {},
	BotKilled_Obs = {},

	-- Detritus
	Mission_Disposal_Destroyed = {},
	Mission_Disposal_Activated = {},
	Mission_Barrels_Destroyed = {},
	Mission_Power_Destroyed = {},
	Mission_Teleporter_Mech = {},
	Mission_Belt_Mech = {},]]
}