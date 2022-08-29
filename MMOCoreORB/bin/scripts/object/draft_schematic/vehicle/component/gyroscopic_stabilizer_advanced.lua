--Copyright (C) 2010 <SWGEmu>


--This File is part of Core3.

--This program is free software; you can redistribute 
--it and/or modify it under the terms of the GNU Lesser 
--General Public License as published by the Free Software
--Foundation; either version 2 of the License, 
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful, 
--but WITHOUT ANY WARRANTY; without even the implied warranty of 
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General 
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--Linking Engine3 statically or dynamically with other modules 
--is making a combined work based on Engine3. 
--Thus, the terms and conditions of the GNU Lesser General Public License 
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3 
--give you permission to combine Engine3 program with free software 
--programs or libraries that are released under the GNU LGPL and with 
--code included in the standard release of Core3 under the GNU LGPL 
--license (or modified versions of such code, with unchanged license). 
--You may copy and distribute such a system following the terms of the 
--GNU LGPL for Engine3 and the licenses of the other code concerned, 
--provided that you include the source code of that other code when 
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated 
--to grant this special exception for their modified versions; 
--it is their choice whether to do so. The GNU Lesser General Public License 
--gives permission to release a modified version without this exception; 
--this exception also makes it possible to release a modified version 


object_draft_schematic_vehicle_component_gyroscopic_stabilizer_advanced = object_draft_schematic_vehicle_component_shared_gyroscopic_stabilizer_advanced:new {
    
	templateType = DRAFTSCHEMATIC,

	customObjectName = "Gyroscopic Stabilizer: Advanced",

	craftingToolTab = 16, -- (See DraftSchematicObjectTemplate.h)
	complexity = 35,
	size = 3,
	factoryCrateSize = 1000,
	factoryCrateType = "object/factory/factory_crate_generic_items.iff",

	xpType = "crafting_mechanic",
	xp = 120,

	assemblySkill = "vehicle_assembly", 
	experimentingSkill = "vehicle_experimentation", 
	customizationSkill = "",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n"},
	ingredientTitleNames = {"ceramic_housing", "jewel_bearings", "wiring_harness", "data_indexer", "data_matrix", "base_vehicle_module_repulsor_1", "base_vehicle_module_repulsor_2", "base_vehicle_module_repulsor_3"},
	ingredientSlotType = {0, 0, 0, 1, 1, 3, 3, 3},
	resourceTypes = {"ore_intrusive_chanlon", "armophous_stygium", "metal_nonferrous", "object/tangible/component/item/shared_electronics_gp_module.iff", "object/tangible/component/item/shared_electronics_memory_module.iff", "object/tangible/component/vehicle/shared_base_vehicle_module_repulsor.iff", "object/tangible/component/vehicle/shared_base_vehicle_module_repulsor.iff", "object/tangible/component/vehicle/shared_base_vehicle_module_repulsor.iff"},
	resourceQuantities = {35, 25, 65, 3, 2, 1, 1, 1},
	contribution = {100, 100, 100, 100, 100, 100, 100, 100},

	targetTemplate = "object/tangible/component/vehicle/gyroscopic_stabilizer_advanced.iff",

	additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_vehicle_component_gyroscopic_stabilizer_advanced, "object/draft_schematic/vehicle/component/gyroscopic_stabilizer_advanced.iff")
