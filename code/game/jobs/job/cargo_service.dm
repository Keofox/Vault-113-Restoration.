/*
Quartermaster
*/
/*
/datum/job/qm
	title = "Quartermaster"
	flag = QUARTERMASTER
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#d7b088"

	outfit = /datum/outfit/job/quartermaster

	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station, access_mineral_storeroom)
	minimal_access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station, access_mineral_storeroom)

/datum/outfit/job/quartermaster
	name = "Quartermaster"

	gloves = /obj/item/clothing/gloves/pda/quartermaster
	ears = /obj/item/device/radio/headset/headset_cargo
	uniform = /obj/item/clothing/under/f13/vault/v13
	shoes = /obj/item/clothing/shoes/sneakers/brown
	glasses = /obj/item/clothing/glasses/sunglasses
	l_hand = /obj/item/weapon/clipboard

/*
Cargo Technician
*/
/datum/job/cargo_tech
	title = "Cargo Technician"
	flag = CARGOTECH
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 3
	spawn_positions = 2
	supervisors = "the quartermaster and the head of personnel"
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/cargo_tech

	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station, access_mineral_storeroom)
	minimal_access = list(access_maint_tunnels, access_cargo, access_cargo_bot, access_mailsorting, access_mineral_storeroom)

/datum/outfit/job/cargo_tech
	name = "Cargo Technician"

	gloves = /obj/item/clothing/gloves/pda/cargo
	ears = /obj/item/device/radio/headset/headset_cargo
	uniform = /obj/item/clothing/under/f13/vault/v13


/*
Shaft Miner
*/
/datum/job/mining
	title = "Shaft Miner"
	flag = MINER
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the quartermaster and the head of personnel"
	selection_color = "#dcba97"

	outfit = /datum/outfit/job/miner

	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station, access_mineral_storeroom)
	minimal_access = list(access_mining, access_mining_station, access_mailsorting, access_mineral_storeroom)

/datum/outfit/job/miner
	name = "Shaft Miner"

	gloves = /obj/item/clothing/gloves/pda/shaftminer
	ears = /obj/item/device/radio/headset/headset_cargo
	uniform = /obj/item/clothing/under/f13/vault/v13
	l_pocket = /obj/item/weapon/reagent_containers/pill/patch/styptic
	backpack_contents = list(/obj/item/weapon/crowbar=1,\
		/obj/item/weapon/storage/bag/ore=1,\
		/obj/item/weapon/mining_voucher=1)

	backpack = /obj/item/weapon/storage/backpack/industrial
	satchel = /obj/item/weapon/storage/backpack/satchel_eng
	box = /obj/item/weapon/storage/box/engineer

/*
Bartender
*/
/datum/job/bartender
	title = "Bartender"
	flag = BARTENDER
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#bbe291"

	outfit = /datum/outfit/job/bartender

	access = list(access_hydroponics, access_bar, access_kitchen, access_morgue, access_weapons)
	minimal_access = list(access_bar)


/datum/outfit/job/bartender
	name = "Bartender"

	glasses = /obj/item/clothing/glasses/sunglasses/reagent
	gloves = /obj/item/clothing/gloves/pda
	belt = /obj/item/clothing/gloves/pda/bar
	ears = /obj/item/device/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/f13/vault/v13
	suit = /obj/item/clothing/suit/armor/vest
	backpack_contents = list(/obj/item/ammo_casing/shotgun/beanbag=4)
	shoes = /obj/item/clothing/shoes/laceup

/*
Cook
*/
/datum/job/cook
	title = "Cook"
	flag = COOK
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#bbe291"
	var/cooks = 0 //Counts cooks amount

	outfit = /datum/outfit/job/cook

	access = list(access_hydroponics, access_bar, access_kitchen, access_morgue)
	minimal_access = list(access_kitchen, access_morgue)

/datum/outfit/job/cook
	name = "Cook"

	gloves = /obj/item/clothing/gloves/pda/cook
	ears = /obj/item/device/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/f13/vault/v13
	suit = /obj/item/clothing/suit/toggle/chef
	head = /obj/item/clothing/head/chefhat


/*
Botanist
*/
/datum/job/hydro
	title = "Botanist"
	flag = BOTANIST
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 3
	spawn_positions = 2
	supervisors = "the head of personnel"
	selection_color = "#bbe291"

	outfit = /datum/outfit/job/botanist

	access = list(access_hydroponics, access_bar, access_kitchen, access_morgue) // Removed tox and chem access because STOP PISSING OFF THE CHEMIST GUYS // //Removed medical access because WHAT THE FUCK YOU AREN'T A DOCTOR YOU GROW WHEAT //Given Morgue access because they have a viable means of cloning.
	minimal_access = list(access_hydroponics, access_morgue) // Removed tox and chem access because STOP PISSING OFF THE CHEMIST GUYS // //Removed medical access because WHAT THE FUCK YOU AREN'T A DOCTOR YOU GROW WHEAT //Given Morgue access because they have a viable means of cloning.

/datum/outfit/job/botanist
	name = "Botanist"

	gloves = /obj/item/clothing/gloves/pda/botanist
	ears = /obj/item/device/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/f13/vault/v13
	suit = /obj/item/clothing/suit/apron
	//gloves  =/obj/item/clothing/gloves/botanic_leather
	suit_store = /obj/item/device/analyzer/plant_analyzer


/*
Janitor
*/
/datum/job/janitor
	title = "Janitor"
	flag = JANITOR
	department_head = list("Head of Personnel")
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#bbe291"
	var/global/janitors = 0

	outfit = /datum/outfit/job/janitor

	access = list(access_janitor, access_maint_tunnels)
	minimal_access = list(access_janitor, access_maint_tunnels)

/datum/outfit/job/janitor
	name = "Janitor"

	gloves = /obj/item/clothing/gloves/pda/janitor
	ears = /obj/item/device/radio/headset/headset_srv
	uniform = /obj/item/clothing/under/f13/vault/v13
	*/