
-- Adds a personality without the use of a csv file.
-- Table of responses to various triggers.
return {
	-- Game States
	Gamestart = {"It's... refreshing to see the islands free again.","Fresh air at last. Let's keep it that way.","#squad up and running, commander. It's time for revenge."},
	FTL_Found = {"AHH!! What is that thing in the pod?!"},
	--FTL_Start = {},
	Gamestart_PostVictory = {"I've settled my score. Now to get even for everyone else."},
	Death_Revived = {"Vitals stable! Let's do this!"},
	Death_Main = {"Oh. That's blood. That's my blood.","Avenge me!"},
	Death_Response = {"That Vek's mine.","Keep the Mech intact. I might still be able to save them.","Another taken by the Vek menace."},
	Death_Response_AI = {"The Mech's done for.","Does the AI die when that breaks? Do we know?","The repair crews will be busy with that."},
	TimeTravel_Win = {"This is for Old Earth, vermin! <deranged laughter>"},
	Gameover_Start = {"No... not again...","The grid's pulse has stopped.","So close and yet so far..."},
	Gameover_Response = {"This is all too familiar. Let's breach.","I'd hoped for more. Maybe I shouldn't have.","I'm sorry, everybody. Leave while you can."},
	
	-- UI Barks
	Upgrade_PowerWeapon = {"I can't wait to use this.","Hook it up already.","Where's the trigger on this thing?"},
	Upgrade_NoWeapon = {"At least clean the equipment before you return it."},
	Upgrade_PowerGeneric = {"This isn't radioactive, is it?.","Awesome, let's get this hooked up.","Core installed. Let's put it to work."},
	
	-- Mid-Battle
	MissionStart = {"Dr. #self_second reporting in.","Get in formation, everybody.","Let's keep it clean out there."},
	Mission_ResetTurn = {"I'm going to be sick.","If we just do it right the first time, we won't have to go through this again!","Vital signs normalizing... ugh...","Vital signs recovering... ugh..."},
	MissionEnd_Dead = {"That's for Old Earth.","Clean sweep. Just how I like it.","Sensors empty. Anyone need a check-up?"},
	MissionEnd_Retreat = {"I'd drag them back up for round two if I could.","Not clean enough. But it'll do.","Battle's over. Anyone need a check-up?"},

	MissionFinal_Start = {"Take this hive out, and save the world. Simple enough.","Work quickly now. If the Vek don't get us, the heatstroke will."},
	MissionFinal_StartResponse = {"Pylons ready! It's time to settle this.","Pylons deployed. Let's get exterminating."},
	--MissionFinal_FallStart = {},
	MissionFinal_FallResponse = {"What?! But we won!","It's collapsing! Brace yourselves!"},
	--MissionFinal_Pylons = {},
	MissionFinal_Bomb = {"Everyone okay from the drop? Where are we?","Everyone survived the drop? Good. Now what?"},
	--MissionFinal_BombResponse = {},
	MissionFinal_CaveStart = {"This bomb will burn the hive clean. Keep it safe!","That's one hell of a sanitizer. Don't let them break it!","This'll cure the islands once and for all."},
	--MissionFinal_BombDestroyed = {},
	MissionFinal_BombArmed = {"It's getting hotter in here. The bomb's done!","It's so hot in here. Is the bomb ready?"},

	PodIncoming = {"Supply drop incoming.","Support drop incoming."},
	PodResponse = {"Don't let the Vek break it open before we can.","Get it if you can, but don't back down!","We juice all the Vek, then grab the pod. Simple."},
	PodCollected_Self = {"This thing is so dirty from impact.","Somebody sanitize this when we get back."},
	PodDestroyed_Obs = {"The supply drop's contaminated.","It's been contaminated. Also crushed."},
	Secret_DeviceSeen_Mountain = {"There's a specimen in that rubble."},
	Secret_DeviceSeen_Ice = {"There's a specimen in the water."},
	Secret_DeviceUsed = {"Vital signs holding. I think it's safe."},
	Secret_Arriving = {"Supply drop incoming, with an impossible chemical signature."},
	Emerge_Detected = {"More bugs incoming!","I'm picking up pheremones. They're calling backup!"},
	Emerge_Success = {"They're up and active now.","More Vek moving in."},
	Emerge_FailedMech = {"Gross, it touched me.","Gross, it's writhing down there."},
	Emerge_FailedVek = {"It's trying to burrow into another Vek. Gross.","It's digging right through the other Vek. Gross."},

	-- Mech State
	Mech_LowHealth = {"Seal compromised! I'm exposed!","Vital signs critical, but I'm not down yet!"},
	Mech_Webbed = {"Ewww... what is this stuff?","Ugh, it's all over my hull.","Can't Detritus deal with this yet?"},
	Mech_Shielded = {"I'm bubbled.","External filter active."},
	Mech_Repaired = {"Vital signs recovering.","Mech sanitized."},
	Pilot_Level_Self = {"I don't need medals. I need results."},
	Pilot_Level_Obs = {"You're fighting the good fight, #main_first."},
	Mech_ShieldDown = {"Filter compromised.","I've been contaminated.","Bubble's been popped."},

	-- Damage Done
	Vek_Drown = {"That Vek's washed.","Give it a rinse, that'll do.*","Vek cleaned."},
	Vek_Fall = {"That Vek's disposed of.","Old Earth can take that one.","That's a hard landing."},
	Vek_Smoke = {"It's choking on that smoke.","Vek's having breathing problems.","It's stunned in there."},
	Vek_Frozen = {"It'd better get frostbite.","Vek's preserved pretty well in there.","Vek's chilled out."},
	VekKilled_Self = {"Adrenaline levels rising.","That's a dopamine hit.","That has to hurt.","Nice."},
	VekKilled_Obs = {"Feels good, doesn't it?","Keep up the pressure, #main_first.","Nice."},
	VekKilled_Vek = {"Even the Vek can't stand each other.","What a show!"},

	DoubleVekKill_Self = {"I don't have to clean the Mechs after this, right?","<deranged laughter>","Reel it in, #self_second. Adrenaline levels are off the charts."},
	DoubleVekKill_Obs = {"I'm proud of you, #main_first.","Very efficient, #main_first."},
	DoubleVekKill_Vek = {"Why couldn't they do this back home?","What a show!","They're showing us how it's done."},

	MntDestroyed_Self = {"Mountain cleared.","Someone clean up this rubble later.","Mountain cleared. How's that for elbow room?"},
	MntDestroyed_Obs = {"Mountain cleared. Nicely done.","Someone clean up that rubble later."},
	MntDestroyed_Vek = {"Mountain cleared, I guess.","It's gotten goop all over the rubble."},

	PowerCritical = {"We're bleeding out here. Keep the Grid safe!","If the grid goes down, it's all over."},
	Bldg_Destroyed_Self = {"What have I become?","I'm unclean in a way I can't fix now."},
	Bldg_Destroyed_Obs = {"Have you lost your mind, #main_first?!","Are you helping the Vek now?!"},
	Bldg_Destroyed_Vek = {"I'm not letting the Vek hurt anyone else!","That Vek's mine.","Shoot that thing dead! And quickly!"},
	Bldg_Resisted = {"We got lucky. No casualties.","It's still standing! And the people are too!","Building reports no injuries."},


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