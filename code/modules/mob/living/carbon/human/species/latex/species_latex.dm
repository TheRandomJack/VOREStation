//RIESIG Code:
/datum/species/vulpkanin/vulpkanin_greater
	name = SPECIES_VULPKANIN_GREATER
	name_plural = "Greater Vulpkanin"

	spawn_flags = SPECIES_CAN_JOIN //| SPECIES_IS_WHITELISTED | SPECIES_WHITELIST_SELECTABLE

// /datum/species/shapeshifter/latex

//wherever latex is
/datum/species/gi88y
	name = SPECIES_LATEX_GIBBY
	name_plural = "GI.88.Y"

	blurb = "Whatever this creature(?) is, it obviously is not related to any common species within the known universe. \
			Originating from an unknown place from unknown people, only record of their existence was an odd court case a couple months back. \
			The way their body works is a mystery, baffling to any who try to take a look, \
			avoiding analysis annoyingly well- even something as simple as composition is unable to be determined."

	show_ssd =         "totally quiescent"

	blood_color = "#505050" //This is the same as the 80,80,80 below, but in hex
	flesh_color = "#505050"
	base_color = "#FFFFFF" //Color mult, start out with this

	health_hud_intensity = 2
	num_alternate_languages = 3
	assisted_langs = list(LANGUAGE_ROOTLOCAL, LANGUAGE_ROOTGLOBAL, LANGUAGE_VOX)
	color_mult = TRUE

	virus_immune =	1
	blood_volume =	0

	hunger_factor = 0

	taste_sensitivity = TASTE_DULL

	min_age =		18
	max_age =		INFINITY

	// Combat/health/chem/etc. vars.
	total_health = 100
	brute_mod =		1
	burn_mod =		0
	oxy_mod =		0
	toxins_mod =    0
	radiation_mod = 0		// Radiation modifier, determines the practically negligable burn damage from direct exposure to extreme sources.
	flash_mod =     1		// Stun from blindness modifier (flashes and flashbangs)
	flash_burn =    0		// how much damage to take from being flashed if light hypersensitive
	sound_mod =     1		// Multiplier to the effective *range* of flashbangs. a flashbang's bang hits an entire screen radius, with some falloff.
	pain_mod =		1		// Multiplier to pain effects; 0.5 = half, 0 = no effect (equal to NO_PAIN, really), 2 = double, etc.
	trauma_mod = 	1		// Affects traumatic shock (how fast pain crit happens). 0 = no effect (immunity to pain crit), 2 = double etc.Overriden by "can_feel_pain" var
	// EMP stuff
	emp_sensitivity =	1				// bitflag. valid flags are: EMP_PAIN, EMP_BLIND, EMP_DEAFEN, EMP_CONFUSE, EMP_STUN, and EMP_(BRUTE/BURN/TOX/OXY)_DMG
	emp_dmg_mod =		0.1			// Multiplier to all EMP damage sustained by the mob, if it's EMP-sensitive
	emp_stun_mod = 		1			// Multiplier to all EMP disorient/etc. sustained by the mob, if it's EMP-sensitive

	// Death vars.
	meat_type = /obj/item/weapon/reagent_containers/food/snacks/meat/human //replace with Gibby goop
	remains_type = /obj/effect/decal/remains/xeno // what?
	gibbed_anim = "gibbed-h"
	dusted_anim = "dust-h"
	//death_sound		//maybe interesting goop sound?
	death_message = "Looses all form, lights fading from their body as the last of their 'life' fades away..."
	knockout_message = "Collapses, unmoving and unresponsive!"
	cloning_modifier = /datum/modifier/cloning_sickness //Some interesting Gibb cloning errors. Faults in the mask

	item_slowdown_mod = 1

	// Environment tolerance/life processes vars.

	breath_type = null
	poison_type = null

	body_temperature = 300
	passive_temp_gain = 0								// Species will gain this much temperature every second

	//Cold

	cold_level_1 = 283
	cold_level_2 = 277
	cold_level_3 = 272
	//level 1 Fahrenheit has shivering (50F)
	//level 2 degrees and under has slowness (40F)
	//level 3 and under can lead to freezing (30F)

	//Make custom Gibby freezing stuff

	cold_discomfort_level = 285							// should be at 60 F
	cold_discomfort_strings = list(
		"You feel chilly.",
		"You shiver suddenly.",
		"You feel uncomfortable in this cold."
		)

	//Hot
	heat_level_1 = INFINITY
	heat_level_2 = INFINITY
	heat_level_3 = INFINITY

	heat_discomfort_level = INFINITY


	water_resistance = 0

	//pressure

	warning_high_pressure = WARNING_HIGH_PRESSURE		// High pressure warning.
	hazard_high_pressure = 	HAZARD_HIGH_PRESSURE //They can cope with slightly higher pressure
	warning_low_pressure = 	-1			// Low pressure warning.
	hazard_low_pressure = 	-1 //Space doesn't bother them
	safe_pressure = 	ONE_ATMOSPHERE

	metabolic_rate = 0

	// Body/form vars.
	inherent_verbs = list() // Species-specific verbs. Set to almost all species verbs because he should be able to make them
	has_fine_manipulation = 1							// Can use small items.
	siemens_coefficient =   0 //Big shocks should lose some stability. Currently does not
	rarity_value =          15 //Not actually as rare as shadekin but they're transdimensional space fluffers I mean- cmon

	darksight = 10		// Native darksight distance. Set Gibby to not be able to have darksight trait, and other anti-darksight traits should be investigated

	flags =            NO_SCAN | NO_SLIP | NO_MINOR_CUT | NO_HALLUCINATION | NO_INFECT | EMP_PAIN | EMP_BRUTE_DMG | EMP_CONFUSE //NO_PAIN
	appearance_flags = HAS_SKIN_COLOR | HAS_EYE_COLOR | HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_LIPS
	spawn_flags		 = SPECIES_CAN_JOIN //| SPECIES_IS_WHITELISTED | SPECIES_WHITELIST_SELECTABLE


	genders = list(MALE, FEMALE, PLURAL, NEUTER)

	has_organ = list(
		O_BRAIN = /mob/living/carbon/brain/gi88y_core, //Replace with Gibby's mask
		O_EYES = /obj/item/organ/eyes/gi88y // Code for half robotic eye. Not here.
		)
	has_limbs = list(
		BP_TORSO =  list("path" = /obj/item/organ/external/chest/unbreakable/gi88y),
		BP_GROIN =  list("path" = /obj/item/organ/external/groin/unbreakable/gi88y),
		BP_HEAD =   list("path" = /obj/item/organ/external/head/unbreakable/gi88y),
		BP_L_ARM =  list("path" = /obj/item/organ/external/arm/unbreakable/gi88y),
		BP_R_ARM =  list("path" = /obj/item/organ/external/arm/right/unbreakable/gi88y),
		BP_L_LEG =  list("path" = /obj/item/organ/external/leg/unbreakable/gi88y),
		BP_R_LEG =  list("path" = /obj/item/organ/external/leg/right/unbreakable/gi88y),
		BP_L_HAND = list("path" = /obj/item/organ/external/hand/unbreakable/gi88y),
		BP_R_HAND = list("path" = /obj/item/organ/external/hand/right/unbreakable/gi88y),
		BP_L_FOOT = list("path" = /obj/item/organ/external/foot/unbreakable/gi88y),
		BP_R_FOOT = list("path" = /obj/item/organ/external/foot/right/unbreakable/gi88y)
		)

	var/monochromatic = FALSE //IGNORE ME

	/*
	evasion = 5
	accuracy = 35
	pulse = PULSE_NONE
	does_not_breathe = TRUE
	*/
	// ^ this is for living/carbon, not datum/species. Gibby brain is a living/carbon

/datum/species/gi88y/New()
	..()

/datum/species/gi88y/create_organs(var/mob/living/carbon/human/H)
	var/obj/item/device/nif/saved_nif = H.nif
	if(saved_nif)
		H.nif.unimplant(H) //Needs reference to owner to unimplant right.
		H.nif.moveToNullspace()
	..()
	if(saved_nif)
		saved_nif.quick_implant(H)

/datum/species/gi88y/get_bodytype(var/mob/living/carbon/human/H)
	if(H)
		return H.impersonate_bodytype || ..()
	return ..()

/datum/species/gi88y/handle_post_spawn(var/mob/living/carbon/human/H)
	..()
	H.synth_color = TRUE

/datum/species/protean/gi88y/equip_survival_gear(var/mob/living/carbon/human/H)
	var/obj/item/stack/nanopaste/nanopaste = new(null,4)
	var/obj/item/stack/material/steel/metal_stack = new(null, 3) //Replace with goop

	if(H.backbag == 1) //Somewhat misleading, 1 == no bag (not boolean)
		H.equip_to_slot_or_del(nanopaste, slot_l_hand)
		H.equip_to_slot_or_del(metal_stack, slot_r_hand)
	else
		H.equip_to_slot_or_del(nanopaste, slot_in_backpack)
		H.equip_to_slot_or_del(metal_stack, slot_in_backpack)

	spawn(0) //Let their real nif load if they have one
		if(!H) //Human could have been deleted in this amount of time. Observing does this, mannequins, etc.
			return
		if(!H.nif)
			var/obj/item/device/nif/bioadap/new_nif = new()
			new_nif.quick_implant(H)
		else
			H.nif.durability = 25

/*
/datum/modifier/goop



/datum/modifier/goop/tick()
	var/mob/living/carbon/human/H
	for(var/obj/item/organ/O as anything in H.internal_organs)
		// Fix internal damage
		if(O.damage > 0)
			O.damage = max(0,O.damage-0.1)
		// If not damaged, but dead, fix it
		else if(O.status & ORGAN_DEAD)
			O.status &= ~ORGAN_DEAD //Unset dead if we repaired it entirely
*/

// organs
/mob/living/carbon/brain/gi88y_core
	icon = 'icons/obj/surgery.dmi' //icons
	icon_state = "brain1"

/mob/living/carbon/brain/gi88y_core/Initialize()
	. = ..()
	var/datum/reagents/R = new/datum/reagents(1000)
	reagents = null
	R.my_atom = src
	default_language = GLOB.all_languages[LANGUAGE_GALCOM]

/obj/item/organ/eyes/gi88y
	/obj/item/organ/internal/eyes
	name = "eyeballs"
	icon_state = "eyes"
	gender = PLURAL
	organ_tag = O_EYES
	parent_organ = BP_HEAD
	var/list/eye_colour = list(0,0,0)
	var/innate_flash_protection = FLASH_PROTECTION_NONE

/obj/item/organ/internal/eyes/gi88y/robotize()
	..()
	name = "optical sensor"
	//verbs |= /obj/item/organ/internal/eyes/proc/change_eye_color

/obj/item/organ/internal/eyes/gi88y/robot
	name = "optical sensor"

/obj/item/organ/internal/eyes/gi88y/robot/New()
	..()
	robotize()


/obj/item/organ/external/chest/unbreakable/gi88y
	nonsolid = 1
	max_damage = 50
	encased = 0
	spread_dam = 1
	vital = 0
	disfigured = -1

/obj/item/organ/external/groin/unbreakable/gi88y
	nonsolid = 1
	max_damage = 30
	spread_dam = 1
	disfigured = -1

/obj/item/organ/external/arm/unbreakable/gi88y
	nonsolid = 1
	max_damage = 20
	spread_dam = 1
	disfigured = -1

/obj/item/organ/external/arm/right/unbreakable/gi88y
	nonsolid = 1
	max_damage = 20
	spread_dam = 1
	disfigured = -1

/obj/item/organ/external/leg/unbreakable/gi88y
	nonsolid = 1
	max_damage = 20
	spread_dam = 1
	disfigured = -1

/obj/item/organ/external/leg/right/unbreakable/gi88y
	nonsolid = 1
	max_damage = 20
	spread_dam = 1
	disfigured = -1

/obj/item/organ/external/foot/unbreakable/gi88y
	nonsolid = 1
	max_damage = 20
	spread_dam = 1
	disfigured = -1

/obj/item/organ/external/foot/right/unbreakable/gi88y
	nonsolid = 1
	max_damage = 20
	spread_dam = 1
	disfigured = -1

/obj/item/organ/external/hand/unbreakable/gi88y
	nonsolid = 1
	max_damage = 20
	spread_dam = 1
	disfigured = -1

/obj/item/organ/external/hand/right/unbreakable/gi88y
	nonsolid = 1
	max_damage = 20
	spread_dam = 1
	disfigured = -1

/obj/item/organ/external/head/unbreakable/gi88y
	nonsolid = 1
	cannot_gib = 0
	vital = 0
	max_damage = 30
	encased = 0
	spread_dam = 1
	disfigured = -1

//#undef
