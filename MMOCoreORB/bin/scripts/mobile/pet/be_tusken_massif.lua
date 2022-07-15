be_tusken_massif = Creature:new {
	objectName = "@mob/creature_names:massif",
	socialGroup = "gurreck",
	faction = "",
	level = 15,
	chanceHit = 0.2,
	damageMin = 30,
	damageMax = 40,
	baseXp = 40,
	baseHAM = 23145,
	baseHAMmax = 23155,
	armor = 1,
	resists = {10,10,10,10,10,10,10,10,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 2 * 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	size = 2,

	templates = {"object/mobile/be_tusken_massif.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(be_tusken_massif, "be_tusken_massif")
