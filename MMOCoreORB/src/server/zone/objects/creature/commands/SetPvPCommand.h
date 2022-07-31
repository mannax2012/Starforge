/*
 * PLEASE DO NOT STEAL OUR WORK
 * ASK BEFOR USING
 * Contact Me Here http://projectphoenix.com.shivtr.com/
 * Created on: 9/21/2016
 * Authors: Kurdtkobain
 */
 
#ifndef SETPVPCOMMAND_H_

#define SETPVPCOMMAND_H_

#include "templates/faction/Factions.h"
#include "server/zone/objects/player/FactionStatus.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/tangible/terminal/characterbuilder/CharacterBuilderTerminal.h"
//#include "server/zone/objects/player/sui/callbacks/BountyHuntSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/packets/player/PlayMusicMessage.h"

class SetPvPCommand : public QueueCommand {
public:

	SetPvPCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;
		
		if (creature->isInCombat()) {
			creature->sendSystemMessage("@jedi_spam:not_while_in_combat");
			return GENERALERROR;
		}
		
		if(creature->hasSkill("force_rank_dark_novice") || creature->hasSkill("force_rank_light_novice") || creature->hasSkill("combat_jedi_novice")){
			creature->sendSystemMessage("Drop out of the Force Ranking System to use this command.");
			return GENERALERROR;
		}

		if (creature->getFaction() == 0){
			creature->sendSystemMessage("You may not use this command if you are not a Rebel Or Imperial, You must be apart of the GCW.");
			return GENERALERROR;
		}

		if (creature->getPlayerObject()->hasPvpTef()){
			creature->sendSystemMessage("You cannot use this while currently under the effects of a Temporary Ememy Flag(TEF).");
			return GENERALERROR;
        }

		if (!creature->checkCooldownRecovery("setPvP")) {
  			StringIdChatParameter stringId;
  
  			const Time* cdTime = creature->getCooldownTime("setPvP");
  
  			int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;
  
  			stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last Command available in %DI seconds.
  			stringId.setDI(timeLeft);
  			creature->sendSystemMessage(stringId);
  			        return GENERALERROR;
  		       }
		
		PlayerObject* targetGhost = creature->getPlayerObject();
		Zone* zone = creature->getZone();
		
		if (targetGhost == nullptr)
			return GENERALERROR;

		if(creature->getFactionStatus() == FactionStatus::ONLEAVE || creature->getFactionStatus() == FactionStatus::COVERT){
			creature->setFactionStatus(FactionStatus::OVERT);
		}else{
			creature->setFactionStatus(FactionStatus::ONLEAVE);
		}
			//Broadcast to Server
 			String playerName = creature->getFirstName();
 			StringBuffer zBroadcast;
 			zBroadcast << "\\#00E644" << playerName << "\\#63C8F9 is now";
		        creature->addCooldown("setPvP", 15 * 1000);
			if(creature->getFactionStatus() == FactionStatus::ONLEAVE){
				zBroadcast << "\\#FFCC66 On Leave\\#63C8F9 and has gone into hiding.";
			}else{
				zBroadcast << "\\#FFCC66 Overt\\#63C8F9 and ready to fight for the fate of the Galaxy.";
			}
			creature->getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, zBroadcast.toString());
		
		return SUCCESS;
	}

};

#endif //SETPVPCOMMAND_H_