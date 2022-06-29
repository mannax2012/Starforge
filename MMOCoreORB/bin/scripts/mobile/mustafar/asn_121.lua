asn_121 = Creature:new {
	customName = "ASN-121",
	pvpfaction = "death_watch",
	socialGroup = "death_watch",
	faction = "",
	level = 170,
	chanceHit = 0.27,
	damageMin = 1550,
	damageMax = 1800,
	baseXp = 1235,
	baseHAM = 326000,
	baseHAMmax = 419000,
	armor = 1,
	resists = {75,75,75,75,75,75,75,75,25},
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

	templates = {"object/mobile/som/asn_121.iff"},
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

CreatureTemplates:addCreatureTemplate(asn_121, "asn_121")
