mokk_soothsayer = Creature:new {
	objectName = "@mob/creature_names:mokk_soothsayer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mokk_tribe",
	faction = "mokk_tribe",
	level = 143,
	chanceHit = 0.44,
	damageMin = 365,
	damageMax = 440,
	baseXp = 4188,
	baseHAM = 9300,
	baseHAMmax = 11300,
	armor = 0,
	resists = {40,60,30,-1,-1,60,60,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dantari_male.iff",
		"object/mobile/dantari_female.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5500000},
				{group = "mokk_common", chance = 1500000},
				{group = "loot_kit_parts", chance = 3000000}
			}
		}
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(mokk_soothsayer, "mokk_soothsayer")
