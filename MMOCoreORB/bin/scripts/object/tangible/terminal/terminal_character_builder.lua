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
--
--NOTES ABOUT CHARACTER BUILDER TERMINAL ITEM LIST FORMAT
---------------------------------------------------------
--The item list is an infinitely deep node tree system.
--To create a sub menu, use the following format:
--"Name of the sub menu", {Menu items contained in brackets}
--To create an item that is selectable, use the following format (within brackets of a submenu):
--"Name of the item", "Path to the server or client template."
--Be sure to pay attention to commas.

object_tangible_terminal_terminal_character_builder = object_tangible_terminal_shared_terminal_character_builder:new {
	gameObjectType = 16400,

	maxCondition = 0,

	templateType = CHARACTERBUILDERTERMINAL,

	glowyBadgeIds = {12, 14, 15, 16, 17, 19, 20, 21, 23, 30, 38, 39, 71, 105, 106, 107},

	--[[villageBranchUnlocks = {
		"force_sensitive_combat_prowess_ranged_accuracy",
		"force_sensitive_combat_prowess_ranged_speed",
		"force_sensitive_combat_prowess_melee_accuracy",
		"force_sensitive_combat_prowess_melee_speed",
		"force_sensitive_enhanced_reflexes_ranged_defense",
		"force_sensitive_enhanced_reflexes_melee_defense"
	},]]--

	itemList = {
		"Character Options",
		{
		"Learn Skill",
			{
				"Dancer",
				{
					"Novice", "social_dancer_novice",
					"Techniques",
					{
						"Dancing Techniques I", "social_dancer_ability_01",
						"Dancing Techniques II", "social_dancer_ability_02",
						"Dancing Techniques III", "social_dancer_ability_03",
						"Technique Specialist IV", "social_dancer_ability_04"
					},
					"Wound Healing",
					{
						"Dancer's Wound Healing I", "social_dancer_wound_01",
						"Dancer's Wound Healing II", "social_dancer_wound_02",
						"Dancer's Wound Healing III", "social_dancer_wound_03",
						"Dancer's Wound Healing IV", "social_dancer_wound_04"
					},
					"Knowledge",
					{
						"Dancing Knowledge I", "social_dancer_knowledge_01",
						"Dancing Knowledge II", "social_dancer_knowledge_02",
						"Dancing Knowledge III", "social_dancer_knowledge_03",
						"Dancing Knowledge IV", "social_dancer_knowledge_04"
					},
					"Fatigue Healing",
					{
						"Dancer's Fatigue Healing I", "social_dancer_shock_01",
						"Dancer's Fatigue Healing II", "social_dancer_shock_02",
						"Dancer's Fatigue Healing III", "social_dancer_shock_03",
						"Dancer's Fatigue Healing IV", "social_dancer_shock_04"
					},
					"Master", "social_dancer_master"
				},
				"Entertainer",
				{
					"Novice", "social_entertainer_novice",
					"Image Design",
					{
						"Image Design I", "social_entertainer_hairstyle_01",
						"Image Design II", "social_entertainer_hairstyle_02",
						"Image Design III", "social_entertainer_hairstyle_03",
						"Image Design IV", "social_entertainer_hairstyle_04"
					},
					"Musicianship",
					{
						"Musicianship I", "social_entertainer_music_01",
						"Musicianship II", "social_entertainer_music_02",
						"Musicianship III", "social_entertainer_music_03",
						"Musicianship IV", "social_entertainer_music_04"
					},
					"Dancing",
					{
						"Dancing I", "social_entertainer_dance_01",
						"Dancing II", "social_entertainer_dance_02",
						"Dancing III", "social_entertainer_dance_03",
						"Dancing IV", "social_entertainer_dance_04"
					},
					"Entertainment Healing",
					{
						"Entertainment Healing I", "social_entertainer_healing_01",
						"Entertainment Healing II", "social_entertainer_healing_02",
						"Entertainment Healing III", "social_entertainer_healing_03",
						"Entertainment Healing IV", "social_entertainer_healing_04"
					},
					"Master", "social_entertainer_master"
				},
				"Image Designer",
				{
					"Novice", "social_imagedesigner_novice",
					"Hairstyling",
					{
						"Hairstyling I", "social_imagedesigner_hairstyle_01",
						"Hairstyling II", "social_imagedesigner_hairstyle_02",
						"Hairstyling III", "social_imagedesigner_hairstyle_03",
						"Hairstyling IV", "social_imagedesigner_hairstyle_04"
					},
					"Face",
					{
						"Face I", "social_imagedesigner_exotic_01",
						"Face II", "social_imagedesigner_exotic_02",
						"Face III", "social_imagedesigner_exotic_03",
						"Face IV", "social_imagedesigner_exotic_04"
					},
					"Bodyform",
					{
						"Bodyform I", "social_imagedesigner_bodyform_01",
						"Bodyform II", "social_imagedesigner_bodyform_02",
						"Bodyform III", "social_imagedesigner_bodyform_03",
						"Bodyform Iv", "social_imagedesigner_bodyform_04"
					},
					"Markings",
					{
						"Markings I", "social_imagedesigner_markings_01",
						"Markings II", "social_imagedesigner_markings_02",
						"Markings III", "social_imagedesigner_markings_03",
						"Markings IV", "social_imagedesigner_markings_04"
					},
					"Master", "social_imagedesigner_master"
				},
				"Musician",
				{
					"Novice", "social_musician_novice",
					"Techniques",
					{
						"Musical Techniques I", "social_musician_ability_01",
						"Musical Techniques II", "social_musician_ability_02",
						"Musical Techniques III", "social_musician_ability_03",
						"Technique Specialist IV", "social_musician_ability_04"
					},
					"Wound Healing",
					{
						"Musician's Wound Healing I", "social_musician_wound_01",
						"Musician's Wound Healing II", "social_musician_wound_02",
						"Musician's Wound Healing III", "social_musician_wound_03",
						"Musician's Wound Healing IV", "social_musician_wound_04"
					},
					"Knowledge",
					{
						"Musical Knowledge I", "social_musician_knowledge_01",
						"Musical Knowledge II", "social_musician_knowledge_02",
						"Musical Knowledge III", "social_musician_knowledge_03",
						"Musical Knowledge IV", "social_musician_knowledge_04"
					},
					"Fatigue Healing",
					{
						"Musician's Fatigue Healing I", "social_musician_shock_01",
						"Musician's Fatigue Healing II", "social_musician_shock_02",
						"Musician's Fatigue Healing III", "social_musician_shock_03",
						"Musician's Fatigue Healing IV", "social_musician_shock_04"
					},
					"Master", "social_musician_master"
				},
				"Politician",
				{
					"Novice", "social_politician_novice",
					"Fiscal Policy",
					{
						"Fiscal Policy I", "social_politician_fiscal_01",
						"Fiscal Policy II", "social_politician_fiscal_02",
						"Fiscal Policy III", "social_politician_fiscal_03",
						"Fiscal Policy IV", "social_politician_fiscal_04"
					},
					"Martial Policy",
					{
						"Martial Policy I", "social_politician_martial_01",
						"Martial Policy II", "social_politician_martial_02",
						"Martial Policy III", "social_politician_martial_03",
						"Martial Policy IV", "social_politician_martial_04"
					},
					"Civic Policy",
					{
						"Civic Policy I", "social_politician_civic_01",
						"Civic Policy II", "social_politician_civic_02",
						"Civic Policy III", "social_politician_civic_03",
						"Civic Policy IV", "social_politician_civic_04"
					},
					"City Customization",
					{
						"City Customization I", "social_politician_urban_01",
						"City Customization II", "social_politician_urban_02",
						"City Customization III", "social_politician_urban_03",
						"City Customization IV", "social_politician_urban_04"
					},
					"Master", "social_politician_master"
				},
			},
		"Unlearn All Skills", "unlearn_all_skills",
		"Cleanse Character", "cleanse_character",
		"Enhance Character", "enhance_character",
			--"Fill Force Bar", "fill_force_bar",
		"Reset Buffs", "reset_buffs",
			--"Learn Languages", "language",
			--"Credits", "credits",
		"Apply ALL DoTs", "apply_all_dots",
		"Apply Poison DOT", "apply_poison_dot",
		"Apply Bleed DOT", "apply_bleed_dot",
		"Apply Disease DOT", "apply_disease_dot",
		"Apply Fire DOT", "apply_fire_dot",
			--"Clear DOTs", "clear_dots",
			--"Max XP", "max_xp",
			--"Become Glowy", "become_glowy"
			--[["Faction Points",
			{
				"Imperial", "faction_imperial",
				"Rebel", "faction_rebel"
			}]]--
		},
		"Items",
		{
			--[["Admin Terminal",
			{
			  "Character Builder", "object/tangible/terminal/terminal_character_builder.iff",
			},]]--
			"Armor",
			{
				"Ithorian Armor",
				{
					"Ithorian Sentinel",
					{
						"Ithorian Sentinel Left Bicep", "object/tangible/wearables/armor/ithorian_sentinel/ith_armor_s03_bicep_l.iff",
						"Ithorian Sentinel Right Bicep", "object/tangible/wearables/armor/ithorian_sentinel/ith_armor_s03_bicep_r.iff",
						"Ithorian Sentinel Boots", "object/tangible/wearables/armor/ithorian_sentinel/ith_armor_s03_boots.iff",
						"Ithorian Sentinel Left Bracer", "object/tangible/wearables/armor/ithorian_sentinel/ith_armor_s03_bracer_l.iff",
						"Ithorian Sentinel Right Bracer", "object/tangible/wearables/armor/ithorian_sentinel/ith_armor_s03_bracer_r.iff",
						"Ithorian Sentinel Chest Plate", "object/tangible/wearables/armor/ithorian_sentinel/ith_armor_s03_chest_plate.iff",
						"Ithorian Sentinel Gloves", "object/tangible/wearables/armor/ithorian_sentinel/ith_armor_s03_gloves.iff",
						"Ithorian Sentinel Helmet", "object/tangible/wearables/armor/ithorian_sentinel/ith_armor_s03_helmet.iff",
						"Ithorian Sentinel Leggings", "object/tangible/wearables/armor/ithorian_sentinel/ith_armor_s03_leggings.iff"
					}
				},
				"Kashyyykian Armor",
				{
					"Kashyyykian Hunting",
					{
						"Kashyyykian Hunting Left Bracer", "object/tangible/wearables/armor/kashyyykian_hunting/armor_kashyyykian_hunting_bracer_l.iff",
						"Kashyyykian Hunting Right Bracer", "object/tangible/wearables/armor/kashyyykian_hunting/armor_kashyyykian_hunting_bracer_r.iff",
						"Kashyyykian Hunting Chest Plate", "object/tangible/wearables/armor/kashyyykian_hunting/armor_kashyyykian_hunting_chest_plate.iff",
						"Kashyyykian Hunting Leggings", "object/tangible/wearables/armor/kashyyykian_hunting/armor_kashyyykian_hunting_leggings.iff"
					}
				},
				"Composite Armor",
				{
					"Composite Left Bicep", "object/tangible/wearables/armor/composite/armor_composite_bicep_l.iff",
					"Composite Right Bicep", "object/tangible/wearables/armor/composite/armor_composite_bicep_r.iff",
					"Composite Boots", "object/tangible/wearables/armor/composite/armor_composite_boots.iff",
					"Composite Left Bracer", "object/tangible/wearables/armor/composite/armor_composite_bracer_l.iff",
					"Composite Right Bracer", "object/tangible/wearables/armor/composite/armor_composite_bracer_r.iff",
					"Composite Chest Plate", "object/tangible/wearables/armor/composite/armor_composite_chest_plate.iff",
					"Composite Gloves", "object/tangible/wearables/armor/composite/armor_composite_gloves.iff",
					"Composite Helmet", "object/tangible/wearables/armor/composite/armor_composite_helmet.iff",
					"Composite Leggings", "object/tangible/wearables/armor/composite/armor_composite_leggings.iff"
				},
			},
			"Deeds",
			{
				--"Resource Deed", "object/tangible/veteran_reward/resource.iff",
				"Structure Deeds",
				{
					"Merchant Tent Deeds",
					{
						"Merchant Tent Deed (Style 1)", "object/tangible/deed/player_house_deed/merchant_tent_style_01_deed.iff",
						"Merchant Tent Deed (Style 2)", "object/tangible/deed/player_house_deed/merchant_tent_style_02_deed.iff",
						"Merchant Tent Deed (Style 3)", "object/tangible/deed/player_house_deed/merchant_tent_style_03_deed.iff"
					},
					"Installation Deeds",
					{
						"Factory Deeds",
						{
							"Clothing Factory Deed", "object/tangible/deed/factory_deed/factory_clothing_deed.iff",
							"Food Factory Deed", "object/tangible/deed/factory_deed/factory_food_deed.iff",
							"Item Factory Deed", "object/tangible/deed/factory_deed/factory_item_deed.iff",
							"Structure Factory Deed", "object/tangible/deed/factory_deed/factory_structure_deed.iff"
						}
					},
					"Generic Deeds",
					{
						"Player House Deeds",
						{
							"Generic Guild Hall Deed", "object/tangible/deed/guild_deed/generic_guild_deed.iff",
							"Large Generic House Deed", "object/tangible/deed/player_house_deed/generic_house_large_deed.iff",
							"Large Generic House Deed (Style 2)", "object/tangible/deed/player_house_deed/generic_house_large_style_02_deed.iff",
							"Medium Generic House Deed", "object/tangible/deed/player_house_deed/generic_house_medium_deed.iff",
							"Medium Generic House Deed (Style 2)", "object/tangible/deed/player_house_deed/generic_house_medium_style_02_deed.iff",
							"Small Generic House Deed", "object/tangible/deed/player_house_deed/generic_house_small_deed.iff",
							"Small Generic House Deed Floorplan 2", "object/tangible/deed/player_house_deed/generic_house_small_floor_02_deed.iff",
							"Small Generic House Deed (Style 2)", "object/tangible/deed/player_house_deed/generic_house_small_style_02_deed.iff",
							"Small Generic House Deed Floorplan 2 (Style 2)", "object/tangible/deed/player_house_deed/generic_house_small_style_02_floor_02_deed.iff"
						},
						"City Deeds",
						{
							"Large Dantooine Garden", "object/tangible/deed/city_deed/garden_dantooine_lrg_01_deed.iff",
							"Medium Dantooine Garden", "object/tangible/deed/city_deed/garden_dantooine_med_01_deed.iff",
							"Small Dantooine Garden", "object/tangible/deed/city_deed/garden_dantooine_sml_01_deed.iff",
							"Large Dathomir Garden", "object/tangible/deed/city_deed/garden_dathomir_lrg_01_deed.iff",
							"Medium Dathomir Garden", "object/tangible/deed/city_deed/garden_dathomir_med_01_deed.iff",
							"Small Dathomir Garden", "object/tangible/deed/city_deed/garden_dathomir_sml_01_deed.iff",
							"Large Endor Garden", "object/tangible/deed/city_deed/garden_endor_lrg_01_deed.iff",
							"Medium Endor Garden", "object/tangible/deed/city_deed/garden_endor_med_01_deed.iff",
							"Small Endor Garden", "object/tangible/deed/city_deed/garden_endor_sml_01_deed.iff"
						}
					},
					"Corellia Deeds",
					{
						"Player House Deeds",
						{
							"Corellian Guild Hall Deed", "object/tangible/deed/guild_deed/corellia_guild_deed.iff",
							"Large Corellian House Deed", "object/tangible/deed/player_house_deed/corellia_house_large_deed.iff",
							"Large Corellian House Deed (Style 2)", "object/tangible/deed/player_house_deed/corellia_house_large_style_02_deed.iff",
							"Medium Corellian House Deed", "object/tangible/deed/player_house_deed/corellia_house_medium_deed.iff",
							"Medium Corellian House Deed (Style 2)", "object/tangible/deed/player_house_deed/corellia_house_medium_style_02_deed.iff",
							"Small Corellian House Deed", "object/tangible/deed/player_house_deed/corellia_house_small_deed.iff",
							"Small Corellian House Deed Floorplan 2", "object/tangible/deed/player_house_deed/corellia_house_small_floor_02_deed.iff",
							"Small Corellian House Deed (Style 2)", "object/tangible/deed/player_house_deed/corellia_house_small_style_02_deed.iff",
							"Small Corellian House Deed Floorplan 2 (Style 2)", "object/tangible/deed/player_house_deed/corellia_house_small_style_02_floor_02_deed.iff"
						},
						"City Deeds",
						{
							"Corellia Bank Deed", "object/tangible/deed/city_deed/bank_corellia_deed.iff",
							"Corellia Cantina Deed", "object/tangible/deed/city_deed/cantina_corellia_deed.iff",
							"Corellia Garage Deed", "object/tangible/deed/city_deed/garage_corellia_deed.iff",
							"Corellia Shuttleport Deed", "object/tangible/deed/city_deed/shuttleport_corellia_deed.iff",
							"Corellia City Hall Deed", "object/tangible/deed/city_deed/cityhall_corellia_deed.iff",
							"Corellia Cloning Center Deed", "object/tangible/deed/city_deed/cloning_corellia_deed.iff",
							"Corellia Medical Center Deed", "object/tangible/deed/city_deed/hospital_corellia_deed.iff",
							"Corellia Theater Deed", "object/tangible/deed/city_deed/theater_corellia_deed.iff",
							"Large Corellia Garden (Style 1)", "object/tangible/deed/city_deed/garden_corellia_lrg_01_deed.iff",
							"Large Corellia Garden (Style 2)", "object/tangible/deed/city_deed/garden_corellia_lrg_02_deed.iff",
							"Large Corellia Garden (Style 3)", "object/tangible/deed/city_deed/garden_corellia_lrg_03_deed.iff",
							"Large Corellia Garden (Style 4)", "object/tangible/deed/city_deed/garden_corellia_lrg_04_deed.iff",
							"Large Corellia Garden (Style 5)", "object/tangible/deed/city_deed/garden_corellia_lrg_05_deed.iff",
							"Medium Corellia Garden (Style 1)", "object/tangible/deed/city_deed/garden_corellia_med_01_deed.iff",
							"Medium Corellia Garden (Style 2)", "object/tangible/deed/city_deed/garden_corellia_med_02_deed.iff",
							"Medium Corellia Garden (Style 3)", "object/tangible/deed/city_deed/garden_corellia_med_03_deed.iff",
							"Medium Corellia Garden (Style 4)", "object/tangible/deed/city_deed/garden_corellia_med_04_deed.iff",
							"Medium Corellia Garden (Style 5)", "object/tangible/deed/city_deed/garden_corellia_med_05_deed.iff",
							"Small Corellia Garden (Style 1)", "object/tangible/deed/city_deed/garden_corellia_sml_01_deed.iff",
							"Small Corellia Garden (Style 2)", "object/tangible/deed/city_deed/garden_corellia_sml_02_deed.iff",
							"Small Corellia Garden (Style 3)", "object/tangible/deed/city_deed/garden_corellia_sml_03_deed.iff",
							"Small Corellia Garden (Style 4)", "object/tangible/deed/city_deed/garden_corellia_sml_04_deed.iff",
							"Small Corellia Garden (Style 5)", "object/tangible/deed/city_deed/garden_corellia_sml_05_deed.iff"
						}
					},
					"Naboo Deeds",
					{
						"Player House Deeds",
						{
							"Naboo Guild Hall Deed", "object/tangible/deed/guild_deed/naboo_guild_deed.iff",
							"Large Naboo House Deed", "object/tangible/deed/player_house_deed/naboo_house_large_deed.iff",
							"Medium Naboo House Deed", "object/tangible/deed/player_house_deed/naboo_house_medium_deed.iff",
							--"Medium Naboo House Deed (Style 2)", "object/tangible/deed/player_house_deed/naboo_house_medium_style_02_deed.iff",
							"Small Naboo House Deed", "object/tangible/deed/player_house_deed/naboo_house_small_deed.iff",
							"Small Naboo House Deed (Style 2)", "object/tangible/deed/player_house_deed/naboo_house_small_style_02_deed.iff"
						},
						"City Deeds",
						{
							"Naboo Bank Deed", "object/tangible/deed/city_deed/bank_naboo_deed.iff",
							"Naboo Cantina Deed", "object/tangible/deed/city_deed/cantina_naboo_deed.iff",
							"Naboo Garage Deed", "object/tangible/deed/city_deed/garage_naboo_deed.iff",
							"Naboo Shuttleport Deed", "object/tangible/deed/city_deed/shuttleport_naboo_deed.iff",
							"Naboo City Hall Deed", "object/tangible/deed/city_deed/cityhall_naboo_deed.iff",
							"Naboo Cloning Center Deed", "object/tangible/deed/city_deed/cloning_naboo_deed.iff",
							"Naboo Medical Center Deed", "object/tangible/deed/city_deed/hospital_naboo_deed.iff",
							"Naboo Theater Deed", "object/tangible/deed/city_deed/theater_naboo_deed.iff",
							"Large Naboo Garden (Style 1)", "object/tangible/deed/city_deed/garden_naboo_lrg_01_deed.iff",
							"Large Naboo Garden (Style 2)", "object/tangible/deed/city_deed/garden_naboo_lrg_02_deed.iff",
							"Large Naboo Garden (Style 3)", "object/tangible/deed/city_deed/garden_naboo_lrg_03_deed.iff",
							"Large Naboo Garden (Style 4)", "object/tangible/deed/city_deed/garden_naboo_lrg_04_deed.iff",
							"Large Naboo Garden (Style 5)", "object/tangible/deed/city_deed/garden_naboo_lrg_05_deed.iff",
							"Medium Naboo Garden (Style 1)", "object/tangible/deed/city_deed/garden_naboo_med_01_deed.iff",
							"Medium Naboo Garden (Style 2)", "object/tangible/deed/city_deed/garden_naboo_med_02_deed.iff",
							"Medium Naboo Garden (Style 3)", "object/tangible/deed/city_deed/garden_naboo_med_03_deed.iff",
							"Medium Naboo Garden (Style 4)", "object/tangible/deed/city_deed/garden_naboo_med_04_deed.iff",
							"Medium Naboo Garden (Style 5)", "object/tangible/deed/city_deed/garden_naboo_med_05_deed.iff",
							"Small Naboo Garden (Style 1)", "object/tangible/deed/city_deed/garden_naboo_sml_01_deed.iff",
							"Small Naboo Garden (Style 2)", "object/tangible/deed/city_deed/garden_naboo_sml_02_deed.iff",
							"Small Naboo Garden (Style 3)", "object/tangible/deed/city_deed/garden_naboo_sml_03_deed.iff",
							"Small Naboo Garden (Style 4)", "object/tangible/deed/city_deed/garden_naboo_sml_04_deed.iff",
							"Small Naboo Garden (Style 5)", "object/tangible/deed/city_deed/garden_naboo_sml_05_deed.iff"
						}
					},
					"Tatooine Deeds",
					{
						"Player House Deeds",
						{
							"Tatooine Guild Hall Deed", "object/tangible/deed/guild_deed/tatooine_guild_deed.iff",
							"Tatooine Guild Hall (Style 2) Deed", "object/tangible/deed/guild_deed/tatooine_guild_style_02_deed.iff",
							"Large Tatooine House Deed", "object/tangible/deed/player_house_deed/tatooine_house_large_deed.iff",
							"Medium Tatooine House Deed", "object/tangible/deed/player_house_deed/tatooine_house_medium_deed.iff",
							"Small Tatooine House Deed", "object/tangible/deed/player_house_deed/tatooine_house_small_deed.iff",
							"Small Tatooine House Deed (Style 2)", "object/tangible/deed/player_house_deed/tatooine_house_small_style_02_deed.iff"
						},
						"City Deeds",
						{
							"Tatooine Bank Deed", "object/tangible/deed/city_deed/bank_tatooine_deed.iff",
							"Tatooine Cantina Deed", "object/tangible/deed/city_deed/cantina_tatooine_deed.iff",
							"Tatooine Garage Deed", "object/tangible/deed/city_deed/garage_tatooine_deed.iff",
							"Tatooine Shuttleport Deed", "object/tangible/deed/city_deed/shuttleport_tatooine_deed.iff",
							"Tatooine City Hall Deed", "object/tangible/deed/city_deed/cityhall_tatooine_deed.iff",
							"Tatooine Cloning Center Deed", "object/tangible/deed/city_deed/cloning_tatooine_deed.iff",
							"Tatooine Medical Center Deed", "object/tangible/deed/city_deed/hospital_tatooine_deed.iff",
							"Tatooine Theater Deed", "object/tangible/deed/city_deed/theater_tatooine_deed.iff",
							"Large Tatooine Garden (Style 1)", "object/tangible/deed/city_deed/garden_tatooine_lrg_01_deed.iff",
							"Large Tatooine Garden (Style 2)", "object/tangible/deed/city_deed/garden_tatooine_lrg_02_deed.iff",
							"Large Tatooine Garden (Style 3)", "object/tangible/deed/city_deed/garden_tatooine_lrg_03_deed.iff",
							"Large Tatooine Garden (Style 4)", "object/tangible/deed/city_deed/garden_tatooine_lrg_04_deed.iff",
							"Large Tatooine Garden (Style 5)", "object/tangible/deed/city_deed/garden_tatooine_lrg_05_deed.iff",
							"Medium Tatooine Garden (Style 1)", "object/tangible/deed/city_deed/garden_tatooine_med_01_deed.iff",
							"Medium Tatooine Garden (Style 2)", "object/tangible/deed/city_deed/garden_tatooine_med_02_deed.iff",
							"Medium Tatooine Garden (Style 3)", "object/tangible/deed/city_deed/garden_tatooine_med_03_deed.iff",
							"Medium Tatooine Garden (Style 4)", "object/tangible/deed/city_deed/garden_tatooine_med_04_deed.iff",
							"Medium Tatooine Garden (Style 5)", "object/tangible/deed/city_deed/garden_tatooine_med_05_deed.iff",
							"Small Tatooine Garden (Style 1)", "object/tangible/deed/city_deed/garden_tatooine_sml_01_deed.iff",
							"Small Tatooine Garden (Style 2)", "object/tangible/deed/city_deed/garden_tatooine_sml_02_deed.iff",
							"Small Tatooine Garden (Style 3)", "object/tangible/deed/city_deed/garden_tatooine_sml_03_deed.iff",
							"Small Tatooine Garden (Style 4)", "object/tangible/deed/city_deed/garden_tatooine_sml_04_deed.iff",
							"Small Tatooine Garden (Style 5)", "object/tangible/deed/city_deed/garden_tatooine_sml_05_deed.iff"
						}
					}
				},
			},
			"Tools",
			{
				"Crafting Tools",
				{
					"Clothing and Armor Crafting Tool", "object/tangible/crafting/station/clothing_tool.iff",
					"Food and Chemical Crafting Tool", "object/tangible/crafting/station/food_tool.iff",
					"Generic Crafting Tool", "object/tangible/crafting/station/generic_tool.iff",
					"Lightsaber Crafting Toolkit", "object/tangible/crafting/station/jedi_tool.iff",
					"Starship Crafting Tool", "object/tangible/crafting/station/space_tool.iff",
					"Structure and Furniture Crafting Tool", "object/tangible/crafting/station/structure_tool.iff",
					"Weapon, Droid, and General Item Crafting Tool", "object/tangible/crafting/station/weapon_tool.iff"
				},
				"Crafting Stations",
				{
					"Clothing Crafting Station", "object/tangible/crafting/station/clothing_station.iff",
					"Food Crafting Station", "object/tangible/crafting/station/food_station.iff",
					"Starship Crafting Station", "object/tangible/crafting/station/space_station.iff",
					"Structure Crafting Station", "object/tangible/crafting/station/structure_station.iff",
					"Weapon Crafting Station", "object/tangible/crafting/station/weapon_station.iff"
				},
				"Survey Tools",
				{
					"Gas Survey Tool", "object/tangible/survey_tool/survey_tool_gas.iff",
					--"Inorganic Survey Tool", "oobject/tangible/survey_tool/survey_tool_inorganic.iff",
					"Chemical Survey Tool", "object/tangible/survey_tool/survey_tool_liquid.iff",
					"Flora Survey Tool", "object/tangible/survey_tool/survey_tool_lumber.iff",
					"Mineral Survey Tool", "object/tangible/survey_tool/survey_tool_mineral.iff",
					"Moisture Survey Tool", "object/tangible/survey_tool/survey_tool_moisture.iff",
					--"Organic Survey Tool", "object/tangible/survey_tool/survey_tool_organic.iff",
					"Solar Survey Tool", "object/tangible/survey_tool/survey_tool_solar.iff",
					"Wind Survey Tool", "object/tangible/survey_tool/survey_tool_wind.iff"
				}
			--"Repair Tools",
			--{
			--"Armor Repair", "object/tangible/crafting/station/armor_repair.iff",
			--"Clothing Repair", "object/tangible/crafting/station/clothing_repair.iff",
			--"Droid Repair", "object/tangible/crafting/station/droid_repair.iff",
			--"Structure Repair", "object/tangible/crafting/station/structure_repair.iff",
			--"Weapon Repair", "object/tangible/crafting/station/weapon_repair.iff"
			--}
			},
			"Weapons",
			{
				"Carbines",
				{
					--		"CDEF Carbine", "object/weapon/ranged/carbine/carbine_cdef.iff",
					--		"Corsec CDEF Carbine", "object/weapon/ranged/carbine/carbine_cdef_corsec.iff",
							"DH17 Carbine", "object/weapon/ranged/carbine/carbine_dh17.iff",
					--		"DH17 Carbine (black)", "object/weapon/ranged/carbine/carbine_dh17_black.iff",
					--		"DH17 Short Carbine", "object/weapon/ranged/carbine/carbine_dh17_snubnose.iff",
					--"DXR6 Carbine", "object/weapon/ranged/carbine/carbine_dxr6.iff",
					--		"E11 Carbine", "object/weapon/ranged/carbine/carbine_e11.iff",
					--		"Enhanced E11 Carbine", "object/weapon/ranged/carbine/carbine_e11_quest.iff",
					--		"Lithitanium Carbine", "object/weapon/ranged/carbine/carbine_e11_victor_quest.iff",
					--		"EE3 Carbine", "object/weapon/ranged/carbine/carbine_ee3.iff",
					--		"Elite Carbine", "object/weapon/ranged/carbine/carbine_elite.iff",
					"Laser Carbine", "object/weapon/ranged/carbine/carbine_laser.iff",
				--		"Nym's Slug-thrower Carbine", "object/weapon/ranged/carbine/carbine_nym_slugthrower.iff"
				},
				"Heavy",
				{
					--		"Acid Stream Launcher", "object/weapon/ranged/heavy/heavy_acid_beam.iff",
					--		"Beam Rifle", "object/weapon/ranged/rifle/rifle_beam.iff",
					"Flame Thrower", "object/weapon/ranged/rifle/rifle_flame_thrower.iff",
					--		"Heavy Acid Rifle", "object/weapon/ranged/rifle/rifle_acid_beam.iff",
					--		"Heavy Particle Beam Cannon", "object/weapon/ranged/heavy/heavy_particle_beam.iff",
					--		"Lightning Beam Cannon", "object/weapon/ranged/heavy/heavy_lightning_beam.iff",
					"Light Lightning Cannon", "object/weapon/ranged/rifle/rifle_lightning.iff",
				--		"Rocket Launcher", "object/weapon/ranged/heavy/heavy_rocket_launcher.iff"
				},
				"One-handed",
				{
					--		"Sword", "object/weapon/melee/sword/sword_01.iff",
					--		"Sword (noob)", "object/weapon/melee/sword/sword_01_noob.iff",
					--		"Curved Sword", "object/weapon/melee/sword/sword_02.iff",
					--		"Ryyk Blade", "object/weapon/melee/sword/sword_blade_ryyk.iff",
					--		"Curved Nyax Sword", "object/weapon/melee/sword/sword_curved_nyax.iff",
					--		"Nyax Sword", "object/weapon/melee/sword/sword_nyax.iff",
					--		"Rantok", "object/weapon/melee/sword/sword_rantok.iff",
					--		"Survival Knife", "object/weapon/melee/knife/knife_survival.iff",
					--		"Dagger", "object/weapon/melee/knife/knife_dagger.iff",
					--		"Donkuwah Knife", "object/weapon/melee/knife/knife_donkuwah.iff",
					--		"Janta Knife", "object/weapon/melee/knife/knife_janta.iff",
					--		"Stone Knife", "object/weapon/melee/knife/knife_stone.iff",
					--		"Stone Knife (noob)", "object/weapon/melee/knife/knife_stone_noob.iff",
					--		"Vibroblade", "object/weapon/melee/knife/knife_vibroblade.iff",
					--		"Jagged Vibroblade", "object/weapon/melee/knife/knife_vibroblade_quest.iff",
					"Stun Baton", "object/weapon/melee/baton/baton_stun.iff",
					"Gaderiffi Baton", "object/weapon/melee/baton/baton_gaderiffi.iff",
				--		"Black Metal Gaderiffi Baton", "object/weapon/melee/baton/victor_baton_gaderiffi.iff"
				},
				"Pistols",
				{
					--		"CDEF Pistol", "object/weapon/ranged/pistol/pistol_cdef.iff",
					--		"CDEF Pistol (noob)", "object/weapon/ranged/pistol/pistol_cdef_noob.iff",
					--		"Corsec CDEF Pistol", "object/weapon/ranged/pistol/pistol_cdef_corsec.iff",
							"D18 Pistol", "object/weapon/ranged/pistol/pistol_d18.iff",
					--		"DE-10 Pistol", "object/weapon/ranged/pistol/pistol_de_10.iff",
					--		"DH17 Pistol", "object/weapon/ranged/pistol/pistol_dh17.iff",
					--		"DL44 Pistol", "object/weapon/ranged/pistol/pistol_dl44.iff",
					--		"DL44 Metal Pistol", "object/weapon/ranged/pistol/pistol_dl44_metal.iff",
					--		"DX2 Pistol", "object/weapon/ranged/pistol/pistol_dx2.iff",
					"FWG5 Pistol", "object/weapon/ranged/pistol/pistol_fwg5.iff",
					--		"Featherweight FWG5 Pistol", "object/weapon/ranged/pistol/pistol_fwg5_quest.iff",
					--		"Geonosian Sonic Blaster", "object/weapon/ranged/pistol/pistol_geonosian_sonic_blaster_loot.iff",
					"Launcher Pistol", "object/weapon/ranged/pistol/pistol_launcher.iff",
					--		"Power5 Pistol", "object/weapon/ranged/pistol/pistol_power5.iff",
					"Republic Blaster", "object/weapon/ranged/pistol/pistol_republic_blaster.iff",
					--		"Modified Republic Blaster", "object/weapon/ranged/pistol/pistol_republic_blaster_quest.iff",
					"Scatter Pistol", "object/weapon/ranged/pistol/pistol_scatter.iff",
				--		"Scout Blaster", "object/weapon/ranged/pistol/pistol_scout_blaster.iff",
				--		"SR Combat Pistol", "object/weapon/ranged/pistol/pistol_srcombat.iff",
				--		"Striker Pistol", "object/weapon/ranged/pistol/pistol_striker.iff",
				--		"Striker Pistol (noob)", "object/weapon/ranged/pistol/pistol_striker_noob.iff",
				--		"Tangle Pistol", "object/weapon/ranged/pistol/pistol_tangle.iff"
				},
				"Polearms",
				{
					--		"Lance", "object/weapon/melee/polearm/lance_controllerfp.iff",
					--		"Nightsister Lance", "object/weapon/melee/polearm/lance_controllerfp_nightsister.iff",
					--		"Nightsister Energy Lance", "object/weapon/melee/polearm/lance_nightsister.iff",
					--		"Janta Staff", "object/weapon/melee/polearm/lance_staff_janta.iff",
					"Metal Staff", "object/weapon/melee/polearm/lance_staff_metal.iff",
					"Vibro Lance", "object/weapon/melee/polearm/lance_vibrolance.iff",
					"Long Vibro Axe", "object/weapon/melee/polearm/polearm_vibro_axe.iff",
				--		"Wood Staff", "object/weapon/melee/polearm/lance_staff_wood_s1.iff",
				--		"Reinforced Combat Staff", "object/weapon/melee/polearm/lance_staff_wood_s2.iff",
				},
				"Rifles",
				{
					--		"Berserker Rifle", "object/weapon/ranged/rifle/rifle_berserker.iff",
					--		"Bowcaster", "object/weapon/ranged/rifle/rifle_bowcaster.iff",
					--		"CDEF Rifle", "object/weapon/ranged/rifle/rifle_cdef.iff",
					"DLT20 Rifle", "object/weapon/ranged/rifle/rifle_dlt20.iff",
					"DLT20a Rifle", "object/weapon/ranged/rifle/rifle_dlt20a.iff",
					--		"E11 Rifle", "object/weapon/ranged/rifle/rifle_e11.iff",
					--		"An Ewok Crossbow", "object/weapon/ranged/rifle/rifle_ewok_crossbow.iff",
					"Jawa Ion Rifle", "object/weapon/ranged/rifle/rifle_jawa_ion.iff",
					--		"Laser Rifle", "object/weapon/ranged/rifle/rifle_laser.iff",
					--		"Laser Rifle (noob)", "object/weapon/ranged/rifle/rifle_laser_noob.iff",
					--		"Lithitanium Rifle", "object/weapon/ranged/rifle/rifle_victor_tusken.iff",
					--		"SG82 Rifle", "object/weapon/ranged/rifle/rifle_sg82.iff",
					--		"Spraystick", "object/weapon/ranged/rifle/rifle_spraystick.iff",
					--		"Tenloss DXR-6 Disruptor Rifle", "object/weapon/ranged/rifle/rifle_tenloss_dxr6_disruptor_loot.iff",
					"T21", "object/weapon/ranged/rifle/rifle_t21.iff",
				--		"Tusken Rifle", "object/weapon/ranged/rifle/rifle_tusken.iff"
				},
				"Two-handed",
				{
					"Two-handed Curved Sword", "object/weapon/melee/2h_sword/2h_sword_katana.iff",
					--		"Grooved Two-handed Sword", "object/weapon/melee/2h_sword/2h_sword_katana_quest.iff",
					--		"Scythe Blade", "object/weapon/melee/2h_sword/2h_sword_scythe.iff",
					"Power Hammer", "object/weapon/melee/2h_sword/2h_sword_maul.iff",
				--		"Two-handed Cleaver", "object/weapon/melee/2h_sword/2h_sword_cleaver.iff",
				--		"Black Sun Executioner's Hack", "object/weapon/melee/2h_sword/2h_sword_blacksun_hack.iff",
				--		"Gamorrean Battleaxe", "object/weapon/melee/2h_sword/2h_sword_battleaxe_quest.iff",
				--		"Heavy Axe", "object/weapon/melee/axe/axe_heavy_duty.iff",
				--		"Vibro Axe", "object/weapon/melee/axe/axe_vibroaxe.iff"
				},
				"Unarmed",
				{
					"Vibro Knuckler", "object/weapon/melee/special/vibroknuckler.iff",
				--		"A Blacksun Razor Knuckler", "object/weapon/melee/special/blacksun_razor.iff"
				}
			},
			--"Holocrons",
			--{
			--	"Dark Jedi Holocron", "object/tangible/jedi/jedi_holocron_dark.iff",
			--	"Light Jedi Holocron", "object/tangible/jedi/jedi_holocron_light.iff",
			--	"Dark Jedi Holocron (gift)", "object/tangible/jedi/no_drop_jedi_holocron_dark.iff",
			--	"Light Jedi Holocron (gift)", "object/tangible/jedi/no_drop_jedi_holocron_light.iff"
			--}
			"Village Testing (Temporary)",
			{
				"Resources",
				{
					"Ardanium II", "object/tangible/loot/quest/ardanium_ii.iff",
					"Endrine", "object/tangible/loot/quest/endrine.iff",
					"Ostrine", "object/tangible/loot/quest/ostrine.iff",
					"Rudic", "object/tangible/loot/quest/rudic.iff",
					"Wind Crystal", "object/tangible/loot/quest/wind_crystal.iff",
				},
				"Loot Kit Parts",
				{
					"Tracking Device Assembly Bracket - First Segment", "object/tangible/loot/collectible/collectible_parts/fs_tracking_device_assembly_bracket_01.iff",
					"Tracking Device Assembly Bracket - Second Segment", "object/tangible/loot/collectible/collectible_parts/fs_tracking_device_assembly_bracket_02.iff",
					"Tracking Device Assembly Bracket - Third Segment", "object/tangible/loot/collectible/collectible_parts/fs_tracking_device_assembly_bracket_03.iff",
					"Tracking Device Case - First Section", "object/tangible/loot/collectible/collectible_parts/fs_tracking_device_case_01.iff",
					"Tracking Device Case - Second Section", "object/tangible/loot/collectible/collectible_parts/fs_tracking_device_case_02.iff",
					"Tracking Device Case - Third Section", "object/tangible/loot/collectible/collectible_parts/fs_tracking_device_case_03.iff",
				},
			}
		}
	}
}

ObjectTemplates:addTemplate(object_tangible_terminal_terminal_character_builder, "object/tangible/terminal/terminal_character_builder.iff")
