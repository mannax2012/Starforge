--Automatically generated by SWGEmu Spawn Tool v0.12 loot editor.

pistol_striker = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/pistol/pistol_striker.iff",
	craftingValues = {
		{"mindamage",23,41,0},
		{"maxdamage",44,73,0},
		{"attackspeed",4.9,3.5,0},
		{"woundchance",4,11,0},
		{"hitpoints",750,750,0},
		{"attackhealthcost",18,11,0},
		{"attackactioncost",39,23,0},
		{"attackmindcost",26,17,0},
		{"roundsused",1,5,0},
		{"zerorangemod",-10,-10,0},
		{"maxrangemod",-70,-70,0},
		{"midrange",20,20,0},
		{"midrangemod",5,15,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- dotChance: The chance of this weapon object dropping with a dot on it. Higher number means less chance. Set to 0 for static.
	dotChance = 10,

	-- dotValues: Object map that can randomly or statically generate a dot (used for weapon objects.)
	dotValues = {
		{"type", 1, 3}, -- 1 = Poison, 2 = Disease, 3 = Fire.
		{"attribute", 0, 8}, -- See CreatureAttributes.h in src for numbers.
		{"strength", 10, 200}, -- set for disease. Fire will be x1.5, poison x2.
		{"duration", 30, 240}, -- set for poison. Fire will be x1.5, disease x5.
		{"potency", 1, 100},
		{"uses", 250, 9999}
	}

}

addLootItemTemplate("pistol_striker", pistol_striker)
