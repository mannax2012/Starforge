--Copyright (C) 2007 <SWGEmu>

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
--which carries forward this exception.
-- Core3 Config File
-- 0 = false, 1 = true

Core3 = {
	MakeLogin = 1,
	MakeZone = 1,
	MakePing = 1,
	MakeStatus = 1,
	MakeWeb = 0,

	ORB = "",
	ORBPort = 44419,

	DBHost = "127.0.0.1",
	DBPort = 3306,
	DBName = "swgemu",
	DBUser = "swgemu",
	DBPass = "123456",
	DBInstances = 2,
	DBSecret = "swgemus3cr37!", -- Change this! This value should be unique and of reasonable length.

	LoginPort = 44453,
	LoginProcessingThreads = 1,
	LoginAllowedConnections = 3000,
	LoginRequiredVersion = "20050408-18:00",

	MantisHost = "127.0.0.1",
	MantisPort = 3306,
	MantisName = "swgemu",
	MantisUser = "swgemu",
	MantisPass = "123456",
	MantisPrfx = "mantis_", -- The prefix for your mantis tables.

	MetricsHost = "localhost",
	MetricsPort = 8125,
	MetricsPrefix = "",

	AutoReg = 1,

	ProgressMonitors = "true",

	PingPort = 44462,
	PingAllowedConnections = 3000,

	ZoneProcessingThreads = 10,
	ZoneAllowedConnections = 30000,
	ZoneGalaxyID = 2, --The actual zone server's galaxyID. Should coordinate with your login server.

	--The following zones are enabled, and will be loaded with server start.
	--To save on RAM and CPU usage, you should only enable the zones you need.
	--In order to disable a zone, all you have to do is comment it out.
	ZonesEnabled = {
		"corellia",
		"talus",
		"yavin4",
		"naboo",
		"rori",
		"tatooine",
		"lok",
		"dantooine",
		"dathomir",
		"endor",
		"dungeon1",
		"dungeon2",
		"tutorial"
	--[[
		"chandrila",
		"coruscant",
		"hoth",
		"kaas",
		"kashyyyk",
		"kashyyyk_hunting",
		"kashyyyk_rryatt_trail",
		"kashyyyk_main",
		"kashyyyk_south_dungeons",
		"kashyyyk_north_dungeons",
		"kashyyyk_pob_dungeons",
		"kashyyyk_dead_forest",
		"mandalore",
		"moraband",
		"mustafar",
		"runtimerules",
		"simple",
		"space_09",
		"space_corellia",
		"space_corellia_2",
		"space_dantooine",
		"space_dathomir",
		"space_endor",
		"space_env",
		"space_halos",
		"space_heavy1",
		"space_light1",
		"space_lok",
		"space_naboo",
		"space_naboo_2",
		"space_tatooine",
		"space_tatooine_2",
		"space_yavin4",
		"taanab",--]]
	},

	-- directory of tres with live.cfg
	TrePath = "/home/swgemu/workspace/tre",

	TreFiles = {
		"mannax_rogue.tre",
		"mtg_patch_023.tre",
		"mtg_patch_022.tre",
		"mtg_planets.tre",
		"mtg_patch_021.tre",
		--"mtg_patch_020.tre",
		"mtg_patch_019.tre",
		"mtg_patch_018.tre",
		"mtg_patch_017.tre",
		"mtg_patch_016.tre",
		"mtg_patch_015.tre",
		"mtg_patch_014.tre",
		"mtg_patch_013_configurable_02.tre",
		"mtg_patch_012_configurable_01.tre",
		"mtg_patch_011_files_01.tre",
		"mtg_patch_010_object_01.tre",
		"mtg_patch_009_Shader_01.tre",
		"mtg_patch_008_texture_04.tre",
		"mtg_patch_007_texture_03.tre",
		"mtg_patch_006_texture_02.tre",
		"mtg_patch_005_texture_01.tre",
		"mtg_patch_004_appearance_04.tre",
		"mtg_patch_003_appearance_03.tre",
		"mtg_patch_002_appearance_02.tre",
		"mtg_patch_001_appearance_01.tre"
	},

	-- Status Server Config
	StatusPort = 44455,
	StatusAllowedConnections = 500,
	StatusInterval = 30, -- interval to check if zone is locked up (in seconds)

	-- Web Server Config
	WebPorts = 44460, -- Can be multiple ports 44460,44461
	WebAccessLog = "../log/webaccess.log",
	WebErrorLog = "../log/weberror.log",
	WebSessionTimeout = 600, -- Length that inactive web sessions expire

	DeleteCharacters = 10, -- How often in minutes to purge deleted characters
	MaxNavMeshJobs = 6,
	MaxAuctionSearchJobs = 1,
	DumpObjFiles = 1,

	UnloadContainers = 1, -- Whether to unload container contents from RAM after the container hasn't been accessed for a time

	LogFile = "log/core3.log",
	LogFileLevel = 4, -- -1 NONE, 0 FATAL, 1 ERROR, 2 WARNING, 3 LOG, 4 INFO, 5 DEBUG
	LogJSON = 0, -- global log output in JSON format
	LogSync = 0, -- flush global log file after each write

	LuaLogJSON = 0,
	PathfinderLogJSON = 0,

	TermsOfServiceVersion = 0,
	TermsOfService = "",

	CleanupMailCount = 25000,

	RESTServerPort = 0,

	InactiveAccountTitle = "Account Disabled",
	InactiveAccountText = "The server administrators have disabled your account.",

	CharacterBuilderEnabled = "true", -- Enable character builder terminals by default

	PlayerLogLevel = 4, -- -1 NONE, 0 FATAL, 1 ERROR, 2 WARNING, 3 LOG, 4 INFO, 5 DEBUG
	MaxLogLines = 1000000, -- how often to rotate log (currently only log/player.log rotates)
}

-- NOTE: conf/config-local.lua is parsed after this file if it exists
