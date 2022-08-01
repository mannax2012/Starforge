/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef SABERSWEEP3COMMAND_H_
#define SABERSWEEP3COMMAND_H_

#include "JediCombatQueueCommand.h"

class SaberSweep3Command : public JediCombatQueueCommand {
public:

	SaberSweep3Command(const String& name, ZoneProcessServer* server)
		: JediCombatQueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (isWearingArmor(creature)) {
			return NOJEDIARMOR;
		}

		return doCombatAction(creature, target);
	}

};

#endif //SABERSWEEP3COMMAND_H_
