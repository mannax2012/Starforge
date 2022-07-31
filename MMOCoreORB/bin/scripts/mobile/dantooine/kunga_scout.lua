kunga_scout = Creature:new {
	objectName = "@mob/creature_names:kunga_scout",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "kunga_tribe",
	faction = "kunga_tribe",
	level = 148,
	chanceHit = 0.47,
	damageMin = 395,
	damageMax = 500,
	baseXp = 4734,
	baseHAM = 10000,
	baseHAMmax = 12000,
	armor = 1,
	resists = {15,35,0,-1,0,60,50,-1,-1},
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
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dantari_male.iff",
		"object/mobile/dantari_female.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5500000},
				{group = "kunga_common", chance = 1500000},
				{group = "loot_kit_parts", chance = 3000000}
			}
		}
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(kunga_scout, "kunga_scout")
