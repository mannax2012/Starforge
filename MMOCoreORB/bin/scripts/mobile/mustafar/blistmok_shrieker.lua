blistmok_shrieker = Creature:new {
	customName = "blistmok_shrieker",
	socialGroup = "death_watch",
	faction = "death_watch",
	pvpfaction = "death_watch",
	level = 270,
	chanceHit = 1.27,
	damageMin = 1550,
	damageMax = 1800,
	baseXp = 2235,
	baseHAM = 126000,
	baseHAMmax = 219000,
	armor = 1,
	resists = {75,50,75,80,75,75,75,45,35},
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/blistmok_shrieker.iff"},
	lootGroups = {
		{
			groups = {},
			lootChance = 2100000
		}
	},
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(blistmok_shrieker, "blistmok_shrieker")
