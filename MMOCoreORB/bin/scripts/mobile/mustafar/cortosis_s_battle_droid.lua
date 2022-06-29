cortosis_s_battle_droid = Creature:new {
	customName = "Cortosis Super Battle Droid",
	pvpfaction = "death_watch",
	socialGroup = "death_watch",
	faction = "",
	level = 300,
	chanceHit = 18,
	damageMin = 1200,
	damageMax = 2300,
	baseXp = 19000,
	baseHAM = 530000,
	baseHAMmax = 530000,
	armor = 3,
	resists = {85,95,100,90,85,25,40,85,95},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = NONE,
	scale = 1.40,

	templates = {
		"object/mobile/death_watch_s_battle_droid.iff",
		"object/mobile/death_watch_s_battle_droid_02.iff",
		"object/mobile/death_watch_s_battle_droid_03.iff"},
	lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_commoners", chance = 10000000}
			},
			lootChance = 500000
		}
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "attack"
}

CreatureTemplates:addCreatureTemplate(cortosis_s_battle_droid, "cortosis_s_battle_droid")
