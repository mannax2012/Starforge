dev_spawn_tests = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "dev_spawn_tests",

}

registerScreenPlay("dev_spawn_tests", true)

function dev_spawn_tests:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnSceneObjects()
		self:spawnMobiles()

	end
end

function dev_spawn_tests:spawnSceneObjects()

spawnSceneObject("tatooine", "object/static/structure/content/exar_kun_torture_table.iff", 100, 6100, -25.8, 3900, -104, 0)
	--spawnSceneObject("tatooine", "object/static/structure/general/droid_r4_powerdown.iff", 3500, 5, -4601, math.rad(0) )
	
end

function dev_spawn_tests:spawnMobiles()

	spawnMobile("tatooine", "hk47", 100, 6100, -25.8, 3900, -104, 0)
    spawnMobile("tatooine", "asn_121", 100, 6102, -25.8, 3901, -104, 0)
    spawnMobile("tatooine", "cortosis_s_battle_droid", 100, 6110, -25.8, 3900, -104, 0)
    spawnMobile("tatooine", "cortosis_battle_droid", 100, 6112, -25.8, 3901, -104, 0)
	
end

