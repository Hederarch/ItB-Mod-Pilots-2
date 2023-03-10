
-- Adds a personality without the use of a csv file.
-- Table of responses to various triggers.
return {
	-- Game States
	Gamestart = {"We advance like the humble glacier. Slow, thorough, unstoppable.","Take your time, commander. The lives of millions hang on your decisions.","We must remain tranquil, even in these hectic times."},
	FTL_Found = {"This pilot is not one of ours."},
	--FTL_Start = {},
	Gamestart_PostVictory = {"And the cycle begins anew."},
	Death_Revived = {"Must I return? I was at peace."},
	Death_Main = {"So it seems.","If I must go, I will."},
	Death_Response = {"You will not be forgotten.","Temper yourselves. We can grieve once the battle ends.","Farewell."},
	Death_Response_AI = {"You will not be forgotten.","Do not let it distract you."},
	TimeTravel_Win = {"We will meet again, commander."},
	Gameover_Start = {"We were too slow to act. Tragic.","The Grid has shattered at last.","The Vek have us beaten. We must go."},
	Gameover_Response = {"There is nothing more for us here.","We have done all we can.","This world is lost, we must move on.","Do not let this distract you."},
	
	-- UI Barks
	Upgrade_PowerWeapon = {"Do what you must.","...","I suppose it's fine."},
	Upgrade_NoWeapon = {"...","Unbelievable."},
	Upgrade_PowerGeneric = {"Might as well.","...","If you must, then fine."},
	
	-- Mid-Battle
	MissionStart = {"Stand back. We have come to restore peace.","You are being saved. Please do not resist.","Keep control everyone. Acting in anger costs lives.","And now, bloodshed."},
	Mission_ResetTurn = {"We now know the future. Use it wisely.","Our errors are forgiven.","Do it again. But better.","Another step towards perfection."},
	MissionEnd_Dead = {"Peace has returned.","At last, silence.","The battle is over."},
	MissionEnd_Retreat = {"This will do, for now.","They will not come back.","We must save our strength for the coming pursuit."},

	MissionFinal_Start = {"Steady yourselves.","We must wait here. Do not disturb me.","At last, the battle ends here."},
	MissionFinal_StartResponse = {"Steady yourselves.","With the Grid, we are unstoppable.","At last, the battle ends here."},
	--MissionFinal_FallStart = {},
	MissionFinal_FallResponse = {"...Unfortunate.","How unfortunate.","This isn't over."},
	--MissionFinal_Pylons = {},
	MissionFinal_Bomb = {"We tried. In the end, we never stood a chance.","This is checkmate. But for us or for them?","The Vek have us surrounded. And they will not take surrender."},
	--MissionFinal_BombResponse = {},
	MissionFinal_CaveStart = {"With this, the violence can end.","Such an inelegant peace. But it is our only chance."},
	--MissionFinal_BombDestroyed = {},
	MissionFinal_BombArmed = {"It's over.","It's done.","No more."},

	PodIncoming = {"Watch your head.","Something comes. Stay alert."},
	PodResponse = {"Do not let it distract you.","Focus on the task at hand.","We will collect it later."},
	PodCollected_Self = {"I have the pod. Focus on the fighting.","Pod secure. Back to the fight."},
	PodDestroyed_Obs = {"No more pod. Tragic.","Farewell, pod.","We do not need it."},
	Secret_DeviceSeen_Mountain = {"Curious. What's in that rubble?"},
	Secret_DeviceSeen_Ice = {"Curious. What's in that ice?"},
	Secret_DeviceUsed = {"That's taken care of. Where were we?"},
	Secret_Arriving = {"Something comes. Something strange..."},
	Emerge_Detected = {"The battle continues from below.","More combatants from below."},
	Emerge_Success = {"With each Vek surfaced, we put more at risk.","We can still put them back under."},
	Emerge_FailedMech = {"This Vek wastes its energy on me.","This Vek struggles beneath me."},
	Emerge_FailedVek = {"We are forever outnumbered, but so are they."},

	-- Mech State
	Mech_LowHealth = {"Deep breaths...","Keep your composure.","This is nothing to me."},
	Mech_Webbed = {"I'm keeping this one busy.","This is nothing to me.","Do not let it distract you."},
	Mech_Shielded = {"I am at peace.","I am unstoppable."},
	Mech_Repaired = {"I am whole once more.","Now I can focus."},
	Pilot_Level_Self = {"There is no honor in this work."},
	Pilot_Level_Obs = {"Do not let it distract you."},
	Mech_ShieldDown = {"A flawless defense.","I remain unharmed.","No shield. Stay focused."},

	-- Damage Done
	Vek_Drown = {"Old Earth has lent us her strength.","It struggles in vain now.","Fate has caught this one."},
	Vek_Fall = {"Back underground where it belongs.","It struggles in vain now.","Fate has caught this one."},
	Vek_Smoke = {"Its mind is clouded as well.","It's lost its focus.","It's lost its temper."},
	Vek_Frozen = {"Rest now.","It's at peace now.","Fate has caught this one."},
	VekKilled_Self = {"Vek down.","It's down.","It's dead.","Fate has caught this one."},
	VekKilled_Obs = {"Gruesome.","One step closer to peace.","It's down."},
	VekKilled_Vek = {"Let them fight.","Save your strength, and waste theirs.","No honor in these creatures."},

	DoubleVekKill_Self = {"I take no joy in this.","What's done is done.","Minimal effort, maximal result."},
	DoubleVekKill_Obs = {"Gruesome.","Two steps closer to peace."},
	DoubleVekKill_Vek = {"We are forever outnumbered, but so are they."},

	MntDestroyed_Self = {"The path is cleared.","Regrettable, but necessary.","These scars wound the world, not save it."},
	MntDestroyed_Obs = {"We cannot carve up the land we restore.","If you must.","These scars wound the world, not save it."},
	MntDestroyed_Vek = {"They will lash out at anything.","Such foolish ferocity."},

	PowerCritical = {"Calm yourselves. We cannot waste power now.","The grid is cracking. Necessary moves only."},
	Bldg_Destroyed_Self = {"I...","Tragic."},
	Bldg_Destroyed_Obs = {"Look what your anger has done.","Tragic."},
	Bldg_Destroyed_Vek = {"Temper yourselves. We can grieve once the battle ends.","Do not let it distract you.","Tragic."},
	Bldg_Resisted = {"The buildings are at peace as well.","Steady and resilient, as we all should be.","Such virtues of stability."},


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