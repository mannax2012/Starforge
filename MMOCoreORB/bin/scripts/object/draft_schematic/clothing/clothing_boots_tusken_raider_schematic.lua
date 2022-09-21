object_draft_schematic_clothing_clothing_boots_tusken_raider_schematic = object_draft_schematic_clothing_shared_clothing_boots_tusken_raider_schematic:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Tusken Raider Boots",
   factoryCrateSize = 0,
   craftingToolTab = 8, -- (See DraftSchematicObjectTemplate.h)
   complexity = 1, 
   size = 3, 

   xpType = "crafting_clothing_general", 
   xp = 160, 

   assemblySkill = "clothing_assembly", 
   experimentingSkill = "clothing_experimentation", 
   customizationSkill = "clothing_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"shell", "binding_and_weatherproofing", "hardware", "sole"},
   ingredientSlotType = {0, 0, 0, 1},
   resourceTypes = {"hide_wooly_tatooine", "fiberplast_tatooine", "steel", "object/tangible/component/clothing/shared_shoe_sole.iff"},
   resourceQuantities = {25, 15, 35, 1},
   contribution = {100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/boots/boots_tusken_raider.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_clothing_clothing_boots_tusken_raider_schematic, "object/draft_schematic/clothing/clothing_boots_tusken_raider_schematic.iff")
