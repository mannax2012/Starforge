object_draft_schematic_clothing_clothing_belt_tusken_raider_schematic = object_draft_schematic_clothing_shared_clothing_belt_tusken_raider_schematic:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Tusken Raider Belt - Schematic Name",

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

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"shell", "binding_and_weatherproofing", "hardware"},
   ingredientSlotType = {0, 0, 0},
   resourceTypes = {"hide_wooly_tatooine", "fiberplast_tatooine", "steel"},
   resourceQuantities = {25, 15, 35},
   contribution = {100, 100, 100},


   targetTemplate = "object/tangible/wearables/belt/belt_tusken_raider_crafted.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_clothing_clothing_belt_tusken_raider_schematic, "object/draft_schematic/clothing/clothing_belt_tusken_raider_schematic.iff")
