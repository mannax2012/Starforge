object_draft_schematic_clothing_clothing_helmet_tusken_raider_schematic = object_draft_schematic_clothing_shared_clothing_helmet_tusken_raider_schematic:new {

   templateType = DRAFTSCHEMATIC,
   factoryCrateSize = 0,
   customObjectName = "Tusken Raider Helmet",

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
   resourceQuantities = {55, 25, 45, 2, 1},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/hat/hat_tusken_raider_crafted.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_clothing_clothing_helmet_tusken_raider_schematic, "object/draft_schematic/clothing/clothing_helmet_tusken_raider_schematic.iff")
