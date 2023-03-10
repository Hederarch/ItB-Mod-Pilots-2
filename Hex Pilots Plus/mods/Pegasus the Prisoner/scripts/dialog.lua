
-- Adds a personality without the use of a csv file.
-- Table of responses to various triggers.
return {
	-- Game States
	Gamestart = {"Boot sequence complete. ","Unit #self_first now online.","Installation complete. Launch '#self_first.exe'?","Systems online. Awaiting user input."},
	FTL_Found = {"Identification failed. Please quit and try again."},
	--FTL_Start = {},
	Gamestart_PostVictory = {"Transmitting diagnostics to Archive datacenter. Tell Dewey I'm awake."},
	Death_Revived = {"Press any key to continue."},
	Death_Main = {"Shutting down...","Unit #self_first unresponsive..."},
	Death_Response = {"Unit #main_second unresponsive...","Unit #main_second shutting down."},
	Death_Response_AI = {"01000111 01101111 01101111 01100100 01100010 01111001 01100101","01010010 01100101 01110011 01110100 00100000 01110111 01100101 01101100 01101100"},
	TimeTravel_Win = {"Engaging sleep cycle. Please return this unit to Archive datacenter."},
	Gameover_Start = {"Combat rating: 0%","Entering power saving mode.","Low battery warning. Please plug in unit #self_first."},
	Gameover_Response = {"Combat rating: 0%","Engaging sleep cycle.","Shutting down..."},
	
	-- UI Barks
	Upgrade_PowerWeapon = {"Installing weapon drivers...","New peripheral connected.","Defragmenting weapon drive...",},
	Upgrade_NoWeapon = {"Exited combat controller with error code 1. Invalid weapon ID."},
	Upgrade_PowerGeneric = {"Capacitors engaged.","Recharging...","Power levels rising...",},
	
	-- Mid-Battle
	MissionStart = {"Defragmenting combat routines...","Downloading local topography...","Indexing Vek weak points...","Calculatng local grid stress...",},
	Mission_ResetTurn = {"Reformatting memory, please wait...","Preparing timetables for overwriting...","Dumping short term memory cache..."},
	MissionEnd_Dead = {"Target queue empty. Combat rating: 85%","Target queue empty. Combat rating: 95%","Target queue empty. Combat rating: 75%"},
	MissionEnd_Retreat = {"Combat rating: 65%","Combat rating: 55%","Combat rating: 45%"},

	MissionFinal_Start = {"Low battery. Please connect to power.","Entering power saving mode. Connect to power immediately."},
	MissionFinal_StartResponse = {"Power online. Establishing connection...","Connecting to Grid, please wait..."},
	--MissionFinal_FallStart = {},
	MissionFinal_FallResponse = {"Dropping #self_first may damage components. Proceed?","Warranty voided due to excessive stress."},
	--MissionFinal_Pylons = {},
	MissionFinal_Bomb = {"Target queue overflow. Rebooting...","Invalid memory access. Target queue is full."},
	--MissionFinal_BombResponse = {},
	MissionFinal_CaveStart = {"Diverting power to new device.","Awaiting interface with unit 'Bomb'"},
	--MissionFinal_BombDestroyed = {},
	MissionFinal_BombArmed = {"Combat rating: 256%","Combat rating: 999%","Combat rating: 126%"},

	PodIncoming = {"Attempting uplink to new device...","A new device has entered the network."},
	PodResponse = {"Stabilizing connection... Do not disturb the device.","Preparing initial scan... Do not disturb the device."},
	PodCollected_Self = {"Device connected successfuly.","Device paired successfully."},
	PodDestroyed_Obs = {"Connection terminated by unknown device.","Connection with unknown device failed.","An unknown device has exited the network."},
	Secret_DeviceSeen_Mountain = {"Nearby mountain is requesting network access. Proceed?"},
	Secret_DeviceSeen_Ice = {"Nearby lake is requesting network access. Proceed?"},
	Secret_DeviceUsed = {"Connection established. Run FTLEvac.exe?"},
	Secret_Arriving = {"Attempting uplink to new device..."},
	Emerge_Detected = {"Expanding target queue.","Preparing memory for new targets."},
	Emerge_Success = {"New entries added to target queue."},
	Emerge_FailedMech = {"Vek loading, please wait...","Vek in progress, please wait..."},
	Emerge_FailedVek = {"Overwriting target queue.","Canceling new entry to target queue."},

	-- Mech State
	Mech_LowHealth = {"Core temperature reaching critical.","Low battery. Please close non-essential tasks.","Entering power saving mode."},
	Mech_Webbed = {"Mech servos unresponsive.","Reconnecting to motor control..."},
	Mech_Shielded = {"Firewall enabled.","Antivirus enabled."},
	Mech_Repaired = {"Core temperature stabilizing...","Repair tasks completed.","Mech recharged."},
	Pilot_Level_Self = {"Unit #self_first incremented."},
	Pilot_Level_Obs = {"Unit #main_second incremented."},
	Mech_ShieldDown = {"Firewall disabled.","Antivirus disabled."},

	-- Damage Done
	Vek_Drown = {"Vek is not waterproofed.","Vek is reporting electrical fault.","Vek is reporting ventillation failure.","Vek warranty voided."},
	Vek_Fall = {"Vek is not drop-resistant.","Vek is reporting internal component failures.","Vek is reporting fatal crash.","Vek warranty voided."},
	Vek_Smoke = {"Vek signal lost.","Vek connection is unstable.","Vek signal decreased.","Vek is reporting sensor failures."},
	Vek_Frozen = {"Vek paused successfully.","Vek process now on standby.","Vek frozen."},
	VekKilled_Self = {"Decrementing target queue.","Vek removed from network.","Vek decommissioned.","Vek shutting down..."},
	VekKilled_Obs = {"Decrementing target queue.","Nearby Vek removed from network.","Nearby Vek decommissioned.","Nearby Vek shutting down..."},
	VekKilled_Vek = {"Decrementing target queue.","Rival Vek removed from network.","Rival Vek decommissioned.","Rival Vek shutting down..."},

	DoubleVekKill_Self = {"Multiple targets de-queued.","Combat rating increasing..."},
	DoubleVekKill_Obs = {"Multiple targets de-queued.","Combat rating increasing..."},
	DoubleVekKill_Vek = {"Multiple targets de-queued.","Combat rating increasing..."},

	MntDestroyed_Self = {"Updating local topography...","Mountain disassembled."},
	MntDestroyed_Obs = {"Updating local topography...","Mountain disassembled."},
	MntDestroyed_Vek = {"Updating local topography...","Mountain disassembled."},

	PowerCritical = {"Grid level critical. Please close non-essential tasks."},
	Bldg_Destroyed_Self = {"Adding unit #self_first to target queue."},
	Bldg_Destroyed_Obs = {"Adding unit #main_second to target queue."},
	Bldg_Destroyed_Vek = {"Updating target priority.","Combat rating dropping..."},
	Bldg_Resisted = {"Closing grief programs.","Regret simulation canceled.","Updating target priority."},


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