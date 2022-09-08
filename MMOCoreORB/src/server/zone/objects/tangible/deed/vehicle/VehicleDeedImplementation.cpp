/*
 * DeedImplementation.cpp
 *
 *  Created on: Apr 18, 2010
 *      Author: crush
 */

#include "server/zone/objects/tangible/deed/vehicle/VehicleDeed.h"
#include"server/zone/ZoneServer.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "templates/tangible/VehicleDeedTemplate.h"
#include "server/zone/objects/intangible/VehicleControlDevice.h"
#include "server/zone/objects/creature/VehicleObject.h"
#include "server/zone/managers/player/PlayerManager.h"

void VehicleDeedImplementation::loadTemplateData(SharedObjectTemplate* templateData) {
	DeedImplementation::loadTemplateData(templateData);

	VehicleDeedTemplate* deedData = dynamic_cast<VehicleDeedTemplate*>(templateData);

	if (deedData == nullptr)
		return;

	controlDeviceObjectTemplate = deedData->getControlDeviceObjectTemplate();
}

void VehicleDeedImplementation::fillAttributeList(AttributeListMessage* alm, CreatureObject* object) {
	DeedImplementation::fillAttributeList(alm, object);

	alm->insertAttribute("hit_points", hitPoints);
	alm->insertAttribute("vehicle_speed", vehicle_speed);
	alm->insertAttribute("vehicle_acceleration", vehicle_acceleration);
	alm->insertAttribute("vehicle_handling", vehicle_handling);
	
	if (armorRating == 0)
		alm->insertAttribute("armorrating","@obj_attr_n:armor_pierce_none");
	else if (armorRating == 1)
		alm->insertAttribute("armorrating","@obj_attr_n:armor_pierce_light");
	else if (armorRating == 2)
		alm->insertAttribute("armorrating","@obj_attr_n:armor_pierce_medium");
	else if (armorRating == 3)
		alm->insertAttribute("armorrating","@obj_attr_n:armor_pierce_heavy");

	// Add resists
	StringBuffer kin;
	kin << Math::getPrecision(kinResist,1) << "%";
	alm->insertAttribute("cat_armor_special_protection.armor_eff_kinetic", kin.toString());

	StringBuffer ene;
	ene << Math::getPrecision(energyResist,1) << "%";
	alm->insertAttribute("cat_armor_effectiveness.armor_eff_energy", ene.toString());

	StringBuffer bla;
	bla << Math::getPrecision(blastResist,1) << "%";
	alm->insertAttribute("cat_armor_effectiveness.armor_eff_blast", bla.toString());

	StringBuffer stu;
	stu << Math::getPrecision(stunResist,1) << "%";
	alm->insertAttribute("cat_armor_effectiveness.armor_eff_stun", stu.toString());

	StringBuffer lig;
	lig << Math::getPrecision(saberResist,1) << "%";
	alm->insertAttribute("cat_armor_effectiveness.armor_eff_restraint", lig.toString());

	StringBuffer hea;
	hea << Math::getPrecision(heatResist,1) << "%";
	alm->insertAttribute("cat_armor_effectiveness.armor_eff_elemental_heat", hea.toString());

	StringBuffer col;
	col << Math::getPrecision(coldResist,1) << "%";
	alm->insertAttribute("cat_armor_effectiveness.armor_eff_elemental_cold", col.toString());

	StringBuffer aci;
	aci << Math::getPrecision(acidResist,1) << "%";
	alm->insertAttribute("cat_armor_effectiveness.armor_eff_elemental_acid", aci.toString());

	StringBuffer ele;
	ele << Math::getPrecision(elecResist,1) << "%";
	alm->insertAttribute("cat_armor_effectiveness.armor_eff_elemental_electrical", ele.toString());
}

void VehicleDeedImplementation::initializeTransientMembers() {
	DeedImplementation::initializeTransientMembers();

	setLoggingName("VehicleDeed");
}

void VehicleDeedImplementation::updateCraftingValues(CraftingValues* values, bool firstUpdate) {
	/*
	 * Values available:	Range:
	 *
	 * hitpoints			varies, integrity of vehicle
	 */

	float vehResCap = 80;
	float hpMin = 500;
	float speedMin = 7.5;
	float speedMax = 40;
	float accelMin = 5;
	float accelMax = 25;
	float turnMin = 45;
	float turnMax = 180;

	hitPoints = (int) values->getCurrentValue("hit_points");

	if (hitPoints < hpMin)
		hitPoints = hpMin;

	vehicle_speed = (float) round((values->getCurrentValue("vehicle_speed") * 100.0)) / 100.0;

	if (vehicle_speed < speedMin)
		vehicle_speed = speedMin;

	if (vehicle_speed > speedMax)
		vehicle_speed = speedMax;

	vehicle_acceleration = (float) round((values->getCurrentValue("vehicle_acceleration") * 100.0)) / 100.0;

	if (vehicle_acceleration < accelMin)
		vehicle_acceleration = accelMin;

	if (vehicle_acceleration > accelMax)
		vehicle_acceleration = accelMax;

	vehicle_handling = (float) round((values->getCurrentValue("vehicle_handling") * 10.0)) / 10.0;

	if (vehicle_handling < turnMin)
		vehicle_handling = turnMin;

	if (vehicle_handling > turnMax)
		vehicle_handling = turnMax;

	float vehicle_resists = (float) round(values->getCurrentValue("vehicle_resists"));

	if (vehicle_resists < 0)
		vehicle_resists = 0;

	if ((kinResist + (int) vehicle_resists) > vehResCap)
		kinResist = vehResCap;
	else
		kinResist += (int) values->getCurrentValue("vehicle_resists");

	if ((energyResist + (int) vehicle_resists) > vehResCap)
		energyResist = vehResCap;
	else
		energyResist += (int) values->getCurrentValue("vehicle_resists");

	if ((blastResist + (int) vehicle_resists) > vehResCap)
		blastResist = vehResCap;
	else
		blastResist += (int) values->getCurrentValue("vehicle_resists");

	if ((coldResist + (int) vehicle_resists) > vehResCap)
		coldResist = vehResCap;
	else
		coldResist += (int) values->getCurrentValue("vehicle_resists");

	if ((heatResist + (int) vehicle_resists) > vehResCap)
		heatResist = vehResCap;
	else
		heatResist += (int) values->getCurrentValue("vehicle_resists");

	if ((elecResist + (int) vehicle_resists) > vehResCap)
		elecResist = vehResCap;
	else
		elecResist += (int) values->getCurrentValue("vehicle_resists");

	if ((acidResist + (int) vehicle_resists) > vehResCap)
		acidResist = vehResCap;
	else
		acidResist += (int) values->getCurrentValue("vehicle_resists");

	if ((stunResist + (int) vehicle_resists) > vehResCap)
		stunResist = vehResCap;
	else
		stunResist += (int) values->getCurrentValue("vehicle_resists");

	if ((saberResist + (int) vehicle_resists) > vehResCap)
		saberResist = vehResCap;
	else
		saberResist += (int) values->getCurrentValue("vehicle_resists");
}

void VehicleDeedImplementation::fillObjectMenuResponse(ObjectMenuResponse* menuResponse, CreatureObject* player) {
	DeedImplementation::fillObjectMenuResponse(menuResponse, player);

	if (isASubChildOf(player))
		menuResponse->addRadialMenuItem(20, 3, "@pet/pet_menu:menu_generate");
}

int VehicleDeedImplementation::handleObjectMenuSelect(CreatureObject* player, byte selectedID) {
	if (selectedID == 20) {
		if (generated || !isASubChildOf(player))
			return 1;

		if (player->isInCombat() || player->getParentRecursively(SceneObjectType::BUILDING) != nullptr) {
			player->sendSystemMessage("@pet/pet_menu:cant_call_vehicle"); //You can only unpack vehicles while Outside and not in Combat.
			return 1;
		}

		ManagedReference<SceneObject*> datapad = player->getSlottedObject("datapad");

		if (datapad == nullptr) {
			player->sendSystemMessage("Datapad doesn't exist when trying to create vehicle");
			return 1;
		}

		// Check if this will exceed maximum number of vehicles allowed
		ManagedReference<PlayerManager*> playerManager = player->getZoneServer()->getPlayerManager();

		int vehiclesInDatapad = 0;
		int maxStoredVehicles = playerManager->getBaseStoredVehicles();

		for (int i = 0; i < datapad->getContainerObjectsSize(); i++) {
			Reference<SceneObject*> obj =  datapad->getContainerObject(i).castTo<SceneObject*>();

			if (obj != nullptr && obj->isVehicleControlDevice() )
				vehiclesInDatapad++;

		}

		if (vehiclesInDatapad >= maxStoredVehicles) {
			player->sendSystemMessage("@pet/pet_menu:has_max_vehicle"); // You already have the maximum number of vehicles that you can own.
			return 1;
		}

		Reference<VehicleControlDevice*> vehicleControlDevice = (server->getZoneServer()->createObject(controlDeviceObjectTemplate.hashCode(), 1)).castTo<VehicleControlDevice*>();

		if (vehicleControlDevice == nullptr) {
			player->sendSystemMessage("wrong vehicle control device object template " + controlDeviceObjectTemplate);
			return 1;
		}

		Locker locker(vehicleControlDevice);

		Reference<VehicleObject*> vehicle = (server->getZoneServer()->createObject(generatedObjectTemplate.hashCode(), 1)).castTo<VehicleObject*>();

		if (vehicle == nullptr) {
			vehicleControlDevice->destroyObjectFromDatabase(true);
			player->sendSystemMessage("wrong vehicle object template " + generatedObjectTemplate);
			return 1;
		}

		Locker vlocker(vehicle, player);
		vehicle->createChildObjects();
		vehicle->setMaxCondition(hitPoints);
		vehicle->setConditionDamage(0);
		vehicle->setRunSpeed(vehicle_speed);
		vehicle->setSpeedMultiplierMod(vehicle_speed / 10); //Divide by 10 to account for base vehicle speed
		vehicle->setTurnScale(vehicle_handling / 75, true); //This is a multiplier. Divide by 75 to account for base vehicle handling
		vehicle->setAccelerationMultiplierMod(vehicle_acceleration / 10, true); //Divide by 10 to account for base vehicle acceleration
		vehicle->setKinetic(kinResist);
		vehicle->setEnergy(energyResist);
		vehicle->setBlast(blastResist);
		vehicle->setStun(stunResist);
		vehicle->setLightSaber(saberResist);
		vehicle->setHeat(heatResist);
		vehicle->setCold(coldResist);
		vehicle->setAcid(acidResist);
		vehicle->setElectricity(elecResist);
		vehicleControlDevice->setControlledObject(vehicle);

		if (datapad->transferObject(vehicleControlDevice, -1)) {
			datapad->broadcastObject(vehicleControlDevice, true);
			vehicleControlDevice->generateObject(player);

			generated = true;

			destroyObjectFromWorld(true);
			destroyObjectFromDatabase(true);

			return 0;
		} else {
			vehicleControlDevice->destroyObjectFromDatabase(true);
			return 1;
		}
	}

	return DeedImplementation::handleObjectMenuSelect(player, selectedID);
}

