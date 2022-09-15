ForceIntimidateSingleCommand = {
	name = "forceintimidatesingle",
	damageMultiplier = 0,
	speed = 1.0,
	forceCost = 70,
	accuracySkillMod = "forceintimidate_accuracy",
	forceAttack = true,
	splashDamage = false,
	areaAction = false,
	areaRange = 1,
	visMod = 25,

	stateEffects = {
	  StateEffect(
		INTIMIDATE_EFFECT,
		{},
		{},
		{ "jedi_state_defense" },
		100,
		0,
		90
	  )
	},

	animation = "force_intimidate",

	combatSpam = "forceintimidatesingle",

	poolsToDamage = NO_ATTRIBUTE,
	weaponType = JEDIWEAPON,
	range = 16
}

AddCommand(ForceIntimidateSingleCommand)

