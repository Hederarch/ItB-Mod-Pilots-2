
-- Adds a personality without the use of a csv file.
-- Table of responses to various triggers.
return {
	-- Game States
	Gamestart = {"Hurry up. We've got work to do.","Let's get going already!","I've got my tools ready. Let's get to work!","Alright #squad, try to keep up."},
	FTL_Found = {"This thing can pilot Mechs? How is that possible?"},
	--FTL_Start = {},
	Gamestart_PostVictory = {"Let's do it faster this time."},
	Death_Revived = {"I can do these repairs in my sleep. Literally."},
	Death_Main = {"Dammit... pushed it too far I guess...","I wasn't fast enough..."},
	Death_Response = {"#main_first got caught. Keep it together everybody.","Dammit! Break formation, maybe I can still save them!"},
	Death_Response_AI = {"The repair crews are going to give me hell for this one.","The autopilot got caught. Keep it together everybody."},
	TimeTravel_Win = {"I think that's a new personal best."},
	Gameover_Start = {"The Grid's been completely fried!","Dammit, we've burnt out the Grid!"},
	Gameover_Response = {"We weren't fast enough...","We'll just have to be faster next time...","Time for another lap."},
	
	-- UI Barks
	Upgrade_PowerWeapon = {"Here, just let me handle it.","Leave it to the expert.","This is just weighing me down.",},
	Upgrade_NoWeapon = {"Streamlined. I like your thinking.","This is more energy efficient anyway."},
	Upgrade_PowerGeneric = {"Stand back, this might explode.","I can get a little more out of this.","The hum lets you know it's working.",},
	
	-- Mid-Battle
	MissionStart = {"These bugs won't know what hit 'em!","Start your timers, everybody!","We're on the clock now. Let's work quickly.",},
	Mission_ResetTurn = {"Hey! You're undoing my progress!","Great, I'll have to fix that again.","These breaches are so inefficient."},
	MissionEnd_Dead = {"This might be my best work yet.","They didn't stand a chance.","My designs prove superior yet again."},
	MissionEnd_Retreat = {"Hey! Why'd we stop?","Come on, they're getting away!","Do we have to leave already?"},

	MissionFinal_Start = {"We're here ahead of schedule.","Hang on, we outran the pylons.","Oops. We've outrun the grid."},
	MissionFinal_StartResponse = {"Pylons coming in fast!","Finally the grid catches up."},
	--MissionFinal_FallStart = {},
	MissionFinal_FallResponse = {"The island's broken!","We're done for!"},
	--MissionFinal_Pylons = {},
	MissionFinal_Bomb = {"Nowhere to run now.","Well, it was nice knowing you all.","Yeah, we're screwed."},
	--MissionFinal_BombResponse = {},
	MissionFinal_CaveStart = {"Just gotta buy the bomb some time!","Why do we have to wait around? Blow up already!"},
	--MissionFinal_BombDestroyed = {},
	MissionFinal_BombArmed = {"Hey, it's ready!","We did it! Suck on that, Vek!"},

	PodIncoming = {"Spare parts on the way!","We've got junk incoming!"},
	PodResponse = {"We'll scrap that later. Make sure it's still usable.","Don't let the Vek wreck it. We can't afford extra repairs."},
	PodCollected_Self = {"Yay, spare parts!","I'll have to make room for this."},
	PodDestroyed_Obs = {"Well great. It's beyond saving now.","I guess we can pick through the wreckage.","Oh there was definitely a passenger in that one."},
	Secret_DeviceSeen_Mountain = {"Let me go check out that glowing thing real quick."},
	Secret_DeviceSeen_Ice = {"Let me go check out that glowing thing real quick."},
	Secret_DeviceUsed = {"This looks expensive. Is it brighter than before?"},
	Secret_Arriving = {"We've got something coming in FAST on sensors!"},
	Emerge_Detected = {"Hey, they're bringing backup!","More bugs are coming!"},
	Emerge_Success = {"Now there's more to deal with.","Great. Now there's more of them."},
	Emerge_FailedMech = {"Too slow, loser!","This loser's not going anywhere."},
	Emerge_FailedVek = {"Too slow, loser!","How are we losing to these things again?"},

	-- Mech State
	Mech_LowHealth = {" The repair crews are gonna yell at me again.","Oh shut up, I'm fine.","I can still handle this."},
	Mech_Webbed = {"I didn't account for this.","Get me out of here!","Still not fast enough."},
	Mech_Shielded = {"It's not like they'll hit me anyway.","This will keep the repair crews happy."},
	Mech_Repaired = {"I can do these repairs in my sleep."},
	Pilot_Level_Self = {"Told you I'd get promoted. Nobody get in my way."},
	Pilot_Level_Obs = {"Looks like you can keep up, #main_first."},
	Mech_ShieldDown = {"I didn't really need it.","Hm? Did something hit me?","They haven't caught me yet."},

	-- Damage Done
	Vek_Drown = {"That Vek's sunk.","That loser can't swim.","The water will handle that one."},
	Vek_Fall = {"That Vek's a goner.","That loser won't be coming back up.","The drop will handle that one."},
	Vek_Smoke = {"Eat my dust."},
	Vek_Frozen = {"Too slow, loser!","That's not going anywhere."},
	VekKilled_Self = {"See? Taken care of.","Nothing personal.","It never even knew what hit it.","#corp will thank me later."},
	VekKilled_Obs = {"Nice work, #main_first.","Not bad, #main_first.","Stay in your lane, #main_first."},
	VekKilled_Vek = {"How are we losing to these things again?","Wow. These bugs are idiots."},

	DoubleVekKill_Self = {"I'm running circles around these bugs.","See? I'm the best.","Too slow, losers!"},
	DoubleVekKill_Obs = {"Damn. You've got to show me that later.","Damn. Can I test drive your mech later?"},
	DoubleVekKill_Vek = {"How are we losing to these things again?","Wow. These bugs are idiots.","That was almost impressive."},

	MntDestroyed_Self = {"One new road, coming up!","#corp will thank me later.", "Hell yeah."},
	MntDestroyed_Obs = {"You missed! Loser!","Next time shoot the bugs.","Hell yeah."},
	MntDestroyed_Vek = {"You missed! Loser!","Watch the rubble!","At least it wasn't a building."},

	PowerCritical = {"Hurry up, the grid's almost down!","Let's wrap this up before the grid goes down."},
	Bldg_Destroyed_Self = {"No time to get clumsy now.","Won't happen again, promise!"},
	Bldg_Destroyed_Obs = {"What the hell? Check your fire!","Do I have to fight you too now?"},
	Bldg_Destroyed_Vek = {"Still not fast enough.","I could've saved them.","So close and yet so far."},
	Bldg_Resisted = {"Hell yeah! It's okay!","It's sturdier than it looks.","You missed, loser!"},


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