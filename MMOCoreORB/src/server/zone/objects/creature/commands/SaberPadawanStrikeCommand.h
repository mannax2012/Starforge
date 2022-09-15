/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef SABERPADAWANSTRIKECOMMAND_H_
#define SABERPADAWANSTRIKECOMMAND_H_

#include "JediCombatQueueCommand.h"

class SaberPadawanStrikeCommand : public JediCombatQueueCommand {
public:

	SaberPadawanStrikeCommand(const String& name, ZoneProcessServer* server)
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

#endif //SABERPADAWANSTRIKECOMMAND_H_
