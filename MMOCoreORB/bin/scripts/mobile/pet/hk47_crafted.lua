hk47_crafted = Creature:new {
	objectName = "@mob/creature_names:hk47_crafted",
	socialGroup = "",
	faction = "",
	level = 4,
	chanceHit = 0.24,
	damageMin = 160,
	damageMax = 170,
	baseXp = 0,
	baseHAM = 4000,
	baseHAMmax = 4500,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/hk47_crafted.iff"
	},
	lootGroups = {},
	defaultAttack = "attack",
	defaultWeapon = "object/weapon/ranged/droid/droid_astromech_ranged.iff",
	conversationTemplate = "",
}

CreatureTemplates:addCreatureTemplate(hk47_crafted, "hk47_crafted")
