/* Closets for specific jobs
 * Contains:
 *		Bartender
 *		Janitor
 *		Lawyer
 */

/*
 * Bartender
 */
/obj/structure/closet/gmcloset
	name = "formal closet"
	desc = "It's a storage unit for formal clothing."
	icon_door = "black"

/obj/structure/closet/gmcloset/fill()
	new /obj/item/clothing/head/that(src)
	new /obj/item/clothing/head/that(src)
	new /obj/item/device/radio/headset/headset_service(src)
	new /obj/item/device/radio/headset/headset_service(src)
	new /obj/item/clothing/head/pin/flower(src)
	new /obj/item/clothing/head/pin/flower/pink(src)
	new /obj/item/clothing/head/pin/flower/yellow(src)
	new /obj/item/clothing/head/pin/flower/blue(src)
	new /obj/item/clothing/head/pin/magnetic(src)
	new /obj/item/clothing/under/sl_suit(src)
	new /obj/item/clothing/under/sl_suit(src)
	new /obj/item/clothing/under/rank/bartender(src)
	new /obj/item/clothing/under/rank/bartender(src)
	new /obj/item/clothing/accessory/wcoat(src)
	new /obj/item/clothing/accessory/wcoat(src)
	new /obj/item/clothing/shoes/black(src)
	new /obj/item/clothing/shoes/black(src)

/*
 * Chef
 */
/obj/structure/closet/chefcloset
	name = "chef's closet"
	desc = "It's a storage unit for foodservice garments."
	icon_door = "black"

/obj/structure/closet/chefcloset/fill()
	new /obj/item/clothing/under/waiter(src)
	new /obj/item/clothing/under/waiter(src)
	if(prob(1))
		new /obj/item/gun/energy/mousegun(src)
	new /obj/item/device/radio/headset/headset_service(src)
	new /obj/item/device/radio/headset/headset_service(src)
	new /obj/item/storage/box/gloves(src)
	new /obj/item/storage/box/mousetraps(src)
	new /obj/item/clothing/under/rank/chef/nt(src)
	new /obj/item/clothing/under/rank/chef/idris(src)
	new /obj/item/clothing/head/chefhat/nt(src)
	new /obj/item/clothing/head/chefhat/idris(src)
	new /obj/item/clothing/head/hairnet(src)
	new /obj/item/clothing/head/hairnet(src)

/*
 * Janitor
 */
/obj/structure/closet/jcloset
	name = "custodial closet"
	desc = "It's a storage unit for janitorial clothes and gear."
	icon_door = "mixed"

/obj/structure/closet/jcloset/fill()
	new /obj/item/clothing/head/softcap/nt/custodian(src)
	new /obj/item/clothing/under/rank/janitor(src)
	new /obj/item/clothing/head/softcap/idris/custodian(src)
	new /obj/item/clothing/under/rank/janitor/idris(src)
	new /obj/item/device/radio/headset/headset_service(src)
	new /obj/item/clothing/gloves/black(src)
	new /obj/item/clothing/head/softcap/custodian(src)
	new /obj/item/clothing/head/bandana/janitor(src)
	new /obj/item/clothing/head/beret/janitor(src)
	new /obj/item/gun/energy/mousegun(src)
	new /obj/item/device/flashlight(src)
	new /obj/item/clothing/suit/caution(src)
	new /obj/item/clothing/suit/caution(src)
	new /obj/item/clothing/suit/caution(src)
	new /obj/item/clothing/suit/caution(src)
	new /obj/item/device/lightreplacer(src)
	new /obj/item/storage/bag/trash(src)
	new /obj/item/clothing/shoes/galoshes(src)
	new /obj/item/storage/belt/janitor(src)
	new /obj/item/storage/box/lights/mixed(src)
	new /obj/item/grenade/chem_grenade/cleaner(src)
	new /obj/item/grenade/chem_grenade/cleaner(src)
	new /obj/item/grenade/chem_grenade/cleaner(src)
	new /obj/item/reagent_containers/spray/cleaner(src)
	new /obj/item/reagent_containers/glass/rag(src)
	new /obj/item/soap/nanotrasen(src)
	new /obj/item/reagent_containers/glass/rag/advanced(src)
	new /obj/item/device/gps/janitor(src)

/*
 * Lawyer
 */
/obj/structure/closet/lawcloset
	name = "legal closet"
	desc = "It's a storage unit for courtroom apparel and items."
	icon_door = "blue"

/obj/structure/closet/lawcloset/fill()
	new /obj/item/clothing/under/lawyer/black(src)
	new /obj/item/clothing/under/lawyer/red(src)
	new /obj/item/clothing/suit/storage/toggle/lawyer/bluejacket(src)
	new /obj/item/clothing/under/lawyer/purple(src)
	new /obj/item/clothing/suit/storage/lawyer/purpjacket(src)
	new /obj/item/clothing/shoes/brown(src)
	new /obj/item/clothing/shoes/black(src)
