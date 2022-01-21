var/datum/announcement/minor/captain_announcement = new(do_newscast = 1)

/datum/job/captain
	title = "Captain"
	flag = CAPTAIN
	departments = list(DEPARTMENT_COMMAND = JOBROLE_SUPERVISOR)
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	intro_prefix = "the"
	supervisors = "company officials and Corporate Regulations"
	selection_color = "#114dc1"
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 14
	economic_modifier = 20

	minimum_character_age = 35

	ideal_character_age = 70 // Old geezer captains ftw

	outfit = /datum/outfit/job/captain

	blacklisted_species = list(SPECIES_HUMAN_OFFWORLD, SPECIES_TAJARA, SPECIES_TAJARA_MSAI, SPECIES_TAJARA_ZHAN, SPECIES_UNATHI, SPECIES_DIONA, SPECIES_IPC, SPECIES_IPC_G1, SPECIES_IPC_G2, SPECIES_IPC_XION, SPECIES_IPC_ZENGHU, SPECIES_IPC_BISHOP, SPECIES_IPC_SHELL, SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_BULWARK, SPECIES_VAURCA_BREEDER)

/datum/outfit/job/captain
	name = "Captain"
	jobtype = /datum/job/captain

	uniform = /obj/item/clothing/under/scc_captain
	shoes = /obj/item/clothing/shoes/brown
	head = /obj/item/clothing/head/caphat/scc
	glasses = /obj/item/clothing/glasses/sunglasses
	id = /obj/item/card/id/gold

	headset = /obj/item/device/radio/headset/heads/captain
	bowman = /obj/item/device/radio/headset/heads/captain/alt
	double_headset = /obj/item/device/radio/headset/alt/double/captain
	wrist_radio = /obj/item/device/radio/headset/wrist/captain

	tab_pda = /obj/item/modular_computer/handheld/pda/command/captain
	wristbound = /obj/item/modular_computer/handheld/wristbound/preset/pda/command/captain
	tablet = /obj/item/modular_computer/handheld/preset/command/captain

	backpack_contents = list(
		/obj/item/storage/box/ids = 1
	)

	implants = list(
		/obj/item/implant/mindshield
	)

	backpack = /obj/item/storage/backpack/captain
	satchel = /obj/item/storage/backpack/satchel_cap
	dufflebag = /obj/item/storage/backpack/duffel/cap
	messengerbag = /obj/item/storage/backpack/messenger/com

/datum/outfit/job/captain/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	if(H && H.w_uniform)
		var/obj/item/clothing/under/U = H.w_uniform
		var/obj/item/clothing/accessory/medal/gold/captain/medal = new()
		U.attach_accessory(null, medal)

	return TRUE

/datum/job/captain/get_access()
	return get_all_station_access()

/datum/job/captain/announce(mob/living/carbon/human/H)
	. = ..()
	captain_announcement.Announce("All hands, Captain [H.real_name] on deck!")
	callHook("captain_spawned", list(H))

/datum/job/xo
	title = "Executive Officer"
	flag = XO
	departments = list(DEPARTMENT_CIVILIAN = JOBROLE_SUPERVISOR, DEPARTMENT_COMMAND)
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	intro_prefix = "the"
	supervisors = "the captain"
	selection_color = "#1e59c9"
	minimal_player_age = 10
	economic_modifier = 10
	ideal_character_age = 50

	minimum_character_age = 30

	outfit = /datum/outfit/job/xo

	access = list(access_sec_doors, access_medical, access_engine, access_change_ids, access_eva, access_heads,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction,
			            access_crematorium, access_kitchen, access_hydroponics,access_chapel_office, access_library, access_research,
			            access_janitor, access_hop, access_RC_announce, access_keycard_auth, access_gateway, access_weapons, access_journalist, access_bridge_crew, access_intrepid)
	minimal_access = list(access_sec_doors, access_medical, access_engine, access_change_ids, access_eva, access_heads,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction,
			            access_crematorium, access_kitchen, access_hydroponics, access_chapel_office, access_library, access_research,
			            access_janitor,   access_hop, access_RC_announce, access_keycard_auth, access_gateway, access_weapons, access_journalist, access_bridge_crew, access_intrepid)

	blacklisted_species = list(SPECIES_TAJARA_MSAI, SPECIES_TAJARA_ZHAN, SPECIES_DIONA, SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_BULWARK, SPECIES_VAURCA_BREEDER)

/datum/outfit/job/xo
	name = "Executive Officer"
	jobtype = /datum/job/xo

	uniform = /obj/item/clothing/under/rank/xo
	shoes = /obj/item/clothing/shoes/brown
	id = /obj/item/card/id/navy

	headset = /obj/item/device/radio/headset/heads/xo
	bowman = /obj/item/device/radio/headset/heads/xo/alt
	double_headset = /obj/item/device/radio/headset/alt/double/xo
	wrist_radio = /obj/item/device/radio/headset/wrist/xo

	tab_pda = /obj/item/modular_computer/handheld/pda/command/xo
	wristbound = /obj/item/modular_computer/handheld/wristbound/preset/pda/command/xo
	tablet = /obj/item/modular_computer/handheld/preset/command/xo

	backpack_contents = list(
		/obj/item/storage/box/ids = 1
	)

	messengerbag = /obj/item/storage/backpack/messenger/com

/datum/job/bridge_crew
	title = "Bridge Crew"
	flag = BRIDGE_CREW
	departments = SIMPLEDEPT(DEPARTMENT_CIVILIAN)
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	intro_prefix = "the"
	supervisors = "the executive officer and the captain"
	selection_color = "#2b5bb5"
	minimal_player_age = 20
	economic_modifier = 10
	ideal_character_age = 45

	minimum_character_age = 30

	outfit = /datum/outfit/job/bridge_crew

	access = list(access_eva, access_heads, access_maint_tunnels, access_weapons, access_bridge_crew, access_intrepid)
	minimal_access = list(access_heads, access_eva, access_heads, access_gateway, access_weapons, access_bridge_crew, access_intrepid)

	blacklisted_species = list(SPECIES_TAJARA_MSAI, SPECIES_TAJARA_ZHAN, SPECIES_DIONA, SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_BULWARK, SPECIES_VAURCA_BREEDER)

/datum/outfit/job/bridge_crew
	name = "Bridge Crew"
	jobtype = /datum/job/bridge_crew

	uniform = /obj/item/clothing/under/rank/bridge_crew
	shoes = /obj/item/clothing/shoes/black

	headset = /obj/item/device/radio/headset/headset_com
	bowman = /obj/item/device/radio/headset/headset_com/alt
	double_headset = /obj/item/device/radio/headset/alt/double/command
	wrist_radio = /obj/item/device/radio/headset/wrist/command
	messengerbag = /obj/item/storage/backpack/messenger/com
