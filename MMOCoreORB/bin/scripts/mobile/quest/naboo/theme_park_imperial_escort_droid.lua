theme_park_imperial_escort_droid = Creature:new {
	objectName = "",
	socialGroup = "",
	faction = "",
	level = 30,
	chanceHit = 0.390000,
	damageMin = 290,
	damageMax = 300,
	baseXp = 2914,
	baseHAM = 8400,
	baseHAMmax = 10200,
	armor = 0,
	resists = {0,45,0,-1,40,-1,40,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	diet = HERBIVORE,

	templates = {"object/mobile/ra7_bug_droid.iff"},
	lootGroups = {},
	weapons = {},
	attacks = {},
	conversationTemplate = "theme_park_imperial_mission_target_convotemplate",
	optionsBitmask = INVULNERABLE + CONVERSABLE
}

CreatureTemplates:addCreatureTemplate(theme_park_imperial_escort_droid, "theme_park_imperial_escort_droid")
