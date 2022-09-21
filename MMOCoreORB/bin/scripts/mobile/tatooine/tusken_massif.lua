tusken_massif_lair = Creature:new {
	objectName = "@mob/creature_names:massif",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 225,
	chanceHit = 1.36,
	damageMin = 260,
	damageMax = 270,
	baseXp = 2543,
	baseHAM = 16300,
	baseHAMmax = 17700,
	armor = 1,
	resists = {120,125,15,150,20,20,20,20,25},
	meatType = "meat_domesticated",
	meatAmount = 475,
	hideType = "hide_leathery",
	hideAmount = 350,
	boneType = "bone_mammal",
	boneAmount = 375,
	--milkType = "milk_domesticated",
	milk = 0*2,
	tamingChance = 0,
	ferocity = 2,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/be_tusken_massif.iff"},
	--hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	scale = 1.25,
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "tusken_massif_common", chance = 5000000},

			}
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(tusken_massif_lair, "tusken_massif_lair")
