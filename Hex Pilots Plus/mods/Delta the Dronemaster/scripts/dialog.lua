
-- Hey what do you think YOU'RE doing looking in here?
-- did you figure out Delta's secret?
-- if not, ZIO == VEK.
-- enjoy decoding :D

return {
	-- Game States
	Gamestart = {"Fikmr sfwivzexmsr.","Wlsa qi xliwi 'Zio'.","Evi csy... gsqqerhiv?","Vigsvhmrk wxevxih."},
	FTL_Found = {"Wygl e tigypmev wtigmqir."},
	--FTL_Start = {},
	Gamestart_PostVictory = {"Xliwi mwperhw evi hmjjivirx... Fyx lsa hmjjivirx?"},
	Death_Revived = {"Eq M rsx hieh?"},
	Death_Main = {"Hvsri hsar. Viuyiwxmrk vitpegiqirx...","Qensv qepjyrgxmsr. Viuyiwxmrk vitpegiqirx..."},
	Death_Response = {"M amwl M lehr'x wiir xlex.","Sl hiev. Fi viehc jsv er eyxstwc.","Eppmih hvsri rsx viwtsrhmrk."},
	Death_Response_AI = {"Eppmih hvsri hmwefpih.","Eppmih hvsri qepjyrgxmsrmrk.","Eppmih hvsri rsx viwtsrhmrk."},
	TimeTravel_Win = {"Ytpmro iwxefpmwlih amxl qsxlivwlmt. Thank you... #squad..."},
	Gameover_Start = {"Tsaiv viehmrkw rikexmzi.","Tsaiv viehmrkw hvsttmrk.","Rievfc gmzmppmerw evi wlsamrk hiwtemv.","Rievfc gmzmppmerw evi termgomrk rsa."},
	Gameover_Response = {"Evi csy qeh ex qi? Tpiewi hsr'x fi.","Wsvvc. M xvmih qc levhiwx.","Sstw. Ger M kix ersxliv xvc?"},
	
	-- UI Barks
	Upgrade_PowerWeapon = {"Wgerrmrk ria eggiwwsvc.","Erepcdmrk... xlmw ampp hs.","Xlic'pp hijmrmxipc rsxmgi xlmw.",},
	Upgrade_NoWeapon = {"Ws... e wxiepxl stivexmsr?","Ksmrk mr uymix. Yrhivwxssh."},
	Upgrade_PowerGeneric = {"Yvkl. Xmrkpc.","Xlmw qigl mw ws yrgsqjc.","Mx fyvrw e pmxxpi.",},
	
	-- Mid-Battle
	MissionStart = {"Hitpscmrk hvsriw. Fikmr wigxsv wger.","Hitpscmrk hvsriw. Fikmr gpier waiit.","Svhivw yrhivwxssh. Jmrh erh hiwxvsc 'Zio'.","Exxirxmsr qsxlivlmt. Ytpsehmrk gssvhmrexiw.",},
	Mission_ResetTurn = {"Qiqsvc amti?","Jegxsvc viwix.","Eq M qepjyrgxmsrmrk?"},
	MissionEnd_Dead = {"Rs Zio jsyrh. Qszmrk sr.","Zio hiwxvscih. Aipp hsri, hvsriw.","Rs qsvi Zio. Eggitxefpi."},
	MissionEnd_Retreat = {"Zio vixviexmrk! Wger xli evie!","Qsxlivwlmt! Viuyiwxmrk fegoyt! Amhi-evie wger!","Fikmr wievgl texxivr hipxe! Xvego xliq hsar!"},

	MissionFinal_Start = {"Sl hiev. Xlmw mwr'x alivi M'q ewwmkrih.","Qsxlivwlmt. Hipxe hvsri jev sjj gsyvwi."},
	MissionFinal_StartResponse = {"Ipigxvmgep hvsriw hitpscih. Fikmr wigvix qmwwmsr.","Ipigxvmgep hvsriw hitpscih. Ewwewwmrexmsr mqqmrirx."},
	--MissionFinal_FallStart = {},
	MissionFinal_FallResponse = {"HVSRI WXEPPMRK! IQIVKIRGC QERIYZIVW!","HVSRI WXEPPMRK! IZEGYEXI!"},
	--MissionFinal_Pylons = {},
	MissionFinal_Bomb = {"Ai'vi wyvvsyrhih. Ger M piezi rsa?","Ai'vi hssqih. Ger M piezi rsa?"},
	--MissionFinal_BombResponse = {},
	MissionFinal_CaveStart = {"Qsxlivwlmt! Hipxe hvsri mw fimrk fsqfih! Viuyiwxmrk vigepp!","Mw xlex e fsqf?! Evi xlic fsqfmrk qi?!"},
	--MissionFinal_BombDestroyed = {},
	MissionFinal_BombArmed = {"Izegyexi! Izegyexi mqqihmexipc!"},

	PodIncoming = {"Yrorsar hvsri mrgsqmrk sr wirwsvw.","Lerk sr. Xlex'w rsx sri sj syvw."},
	PodResponse = {"Ria hvsri! Mhirxmjc csyvwipj!","Mx pssow asyrhih. Kvef mx!","Xlex hvsri'w lyvx! Ger ai wezi mx?$"},
	PodCollected_Self = {"Mx'w hieh. Aemx, xlmw mwr'x e hvsri.","Sl, xlmw mwr'x e hvsri."},
	PodDestroyed_Obs = {"M... ai'pp lezi xs qszi sr.","Ger'x wezi xliq epp.","Rs! Qecfi ai ger wxmpp wezi mx!"},
	Secret_DeviceSeen_Mountain = {"Hvsriw, wger xlex qsyrxemr."},
	Secret_DeviceSeen_Ice = {"Hvsriw, wger xlex aexiv."},
	Secret_DeviceUsed = {"Qsxlivwlmt, mw xlex csy?"},
	Secret_Arriving = {"Xlex'w rsx xli qsxlivwlmt! Alex lezi ai geppih?"},
	Emerge_Detected = {"Qsvi Zio M xlmro.","Nywx qsvi Zio."},
	Emerge_Success = {"Oiit e gevijyp aexgl sr xlswi.","Hsr'x pix xliq syx sj csyv wmklx!"},
	Emerge_FailedMech = {"Wxefmpmdivw jempmrk!","Lsph tswmxmsr!"},
	Emerge_FailedVek = {"Shh. Mx'w rsx qszmrk?","Xlic gerrsx gsstivexi."},

	-- Mech State
	Mech_LowHealth = {"Hipxe hvsri gvmxmgep! Izeg! Izeg!","Mx lyvxw!","Kix qi syx sj livi!"},
	Mech_Webbed = {"M ger'x jpc syx! Mx'w ksx qi!","Hvsri getxyvih! Wipj hiwxvygx?","Kix qi syx sj livi!"},
	Mech_Shielded = {"Hijirwmzi qeriyzivw!","Qygl ettvigmexih."},
	Mech_Repaired = {"M'h tvijiv e vitpegiqirx."},
	Pilot_Level_Self = {"Xlic ettvigmexi qi."},
	Pilot_Level_Obs = {"Xlic ettvigmexi csy."},
	Mech_ShieldDown = {"Hijirwiw gsqtvsqmwih!","Hijirwiw hsar!","M'q ibtswih!"},

	-- Damage Done
	Vek_Drown = {"Zio wyfqivkih.","Zio wmpirgih.","Zio wmromrk jewx."},
	Vek_Fall = {"Zio wxeppmrk.","Zio wmromrk jewx.","Zio hsar."},
	Vek_Smoke = {"Zio wirwsvw neqqih. Qszi mr.","Zio hmwvytxih. Qszi mr.","Zio tevepcdih. Qszi mr."},
	Vek_Frozen = {"Zio getxyvih. Rsxmjc xli qsxlivwlmt.","Zio hmwvytxih. Qszi mr.","Zio tevepcdih. Qszi mr."},
	VekKilled_Self = {"Zio hsar.","Xlex'w ksxxe lyvx.","Zio ipmqmrexih.","Wxiepxlc."},
	VekKilled_Obs = {"Zio hsar.","Xlex'w ksxxe lyvx.","Zio ipmqmrexih."},
	VekKilled_Vek = {"Xlic gerrsx gsstivexi.","Shh. Mx'w rsx qszmrk?","Fixvecep! E hsyfpi ekirx!"},

	DoubleVekKill_Self = {"Xlmw aewr'x e wxiepxl stivexmsr, vmklx?"},
	DoubleVekKill_Obs = {"Ijjmgmirx, fyx csy xsxeppc fpia syv gsziv."},
	DoubleVekKill_Vek = {"Alc hmh xlic hs xlex? Hvsriw, gsqqirgi erepcwmw."},

	MntDestroyed_Self = {"Gsziv ipmqmrexih.","Hvsriw, gsppigx xlex vyffpi.","Hvsriw, gpier xlex yt uymgo."},
	MntDestroyed_Obs = {"Gsziv ipmqmrexih.","Hvsriw, gsppigx xlex vyffpi.","Hvsriw, gpier xlex yt uymgo."},
	MntDestroyed_Vek = {"Gsziv ipmqmrexih.","Hvsriw, gsppigx xlex vyffpi.","Hvsriw, gpier xlex yt uymgo."},

	PowerCritical = {"Pswmrk wmkrep... alivi mw qc tsaiv?","Tsaiv hitpixmrk. Pix'w hs xlmw uymgopc!"},
	Bldg_Destroyed_Self = {"Aemx! M'q wsvvc! M'q wsvvc!","Hsr'x lyvx qi! M hmhr'x qier xs!"},
	Bldg_Destroyed_Obs = {"Alex hs csy xlmro csy'vi hsmrk?!","Wxst xlex! Csy'vi lyvxmrk xliq!"},
	Bldg_Destroyed_Vek = {"Ger'x wezi xliq epp.","Stop that! You're hurting them!","Viuyiwxmrk wyttsvx. Xlivi'w fiir gewyepxmiw."},
	Bldg_Resisted = {"Kix xliq eaec jvsq xli fymphmrk!","Lssvec! Xlic'vi soec!","Ai ksx pygoc? Ai ksx pygoc!"},


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