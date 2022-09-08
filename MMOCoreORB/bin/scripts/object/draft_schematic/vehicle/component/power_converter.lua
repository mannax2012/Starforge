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


object_draft_schematic_vehicle_component_power_converter = object_draft_schematic_vehicle_component_shared_power_converter:new {
    
	templateType = DRAFTSCHEMATIC,

	customObjectName = "Power Converter",

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

	ingredientTemplateNames = {"craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n"},
	ingredientTitleNames = {"cooling_agent", "fuel_cell", "metal_casing", "base_vehicle_module_power_1", "base_vehicle_module_power_2"},
	ingredientSlotType = {0, 0, 0, 3, 3},
	resourceTypes = {"gas_reactive", "fuel_petrochem_liquid_known", "steel", "object/tangible/component/vehicle/shared_base_vehicle_module_power.iff", "object/tangible/component/vehicle/shared_base_vehicle_module_power.iff"},
	resourceQuantities = {25, 35, 75, 1, 1},
	contribution = {100, 100, 100, 100, 100},

	targetTemplate = "object/tangible/component/vehicle/power_converter.iff",

	additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_vehicle_component_power_converter, "object/draft_schematic/vehicle/component/power_converter.iff")
