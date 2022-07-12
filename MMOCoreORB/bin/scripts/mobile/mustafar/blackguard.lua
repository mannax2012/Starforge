blackguard = Creature:new {
	customName = "Blackguard",
	pvpfaction = "death_watch",
	socialGroup = "death_watch",
	faction = "",
	level = 270,
	chanceHit = 0.27,
	damageMin = 550,
	damageMax = 800,
	baseXp = 1235,
	baseHAM = 160000,
	baseHAMmax = 190000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0*2,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/blackguard.iff"},
	lootGroups = {
		{
			groups = {},
			lootChance = 2100000
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(blackguard, "blackguard")
