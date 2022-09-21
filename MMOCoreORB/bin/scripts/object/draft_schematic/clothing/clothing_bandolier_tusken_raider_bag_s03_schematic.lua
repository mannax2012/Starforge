object_draft_schematic_clothing_clothing_bandolier_tusken_raider_bag_s03_schematic = object_draft_schematic_clothing_shared_clothing_bandolier_tusken_raider_bag_s03_schematic:new {

   templateType = DRAFTSCHEMATIC,
   factoryCrateSize = 0,
   customObjectName = "Tusken Raider Bandolier",

   craftingToolTab = 8, -- (See DraftSchematicObjectTemplate.h)
   complexity = 1, 
   size = 3, 

   xpType = "crafting_clothing_general", 
   xp = 60, 

   assemblySkill = "clothing_assembly", 
   experimentingSkill = "clothing_experimentation", 
   customizationSkill = "clothing_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"shell", "binding_and_weatherproofing", "hardware", "liner", "strap_adjustment"},
   ingredientSlotType = {0, 0, 0, 1, 3},
   resourceTypes = {"hide_wooly_tatooine", "fiberplast_tatooine", "steel", "object/tangible/component/clothing/shared_synthetic_cloth.iff", "object/tangible/component/clothing/shared_synthetic_cloth.iff"},
   resourceQuantities = {45, 30, 25, 2, 1},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/bandolier/bandolier_tusken_raider_bag_s03.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_clothing_clothing_bandolier_tusken_raider_bag_s03_schematic, "object/draft_schematic/clothing/clothing_bandolier_tusken_raider_bag_s03_schematic.iff")
