mobs:register_mob("marinaramobs:seamouse", {
stepheight = 1,
	type = "animal",
	passive = true,
	reach = 1,
	attack_npcs = false,
	reach = 2,
	damage = 0,
	hp_min = 10,
	hp_max = 40,
	armor = 100,
	collisionbox = {-0.2, -0.01, -0.2,  0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "Seamouse.b3d",
	drawtype = "front",
	textures = {
		{"textureseamouse.png"},

	},
	sounds = {
	},
	makes_footstep_sound = false,
	walk_velocity = 0.3,
	run_velocity = 0.5,
	runaway = true,
        runaway_from = {"animalworld:bear", "animalworld:crocodile", "animalworld:tiger", "animalworld:spider", "animalworld:spidermale", "animalworld:shark", "animalworld:hyena", "animalworld:kobra", "animalworld:monitor", "animalworld:snowleopard", "animalworld:volverine", "livingfloatlands:deinotherium", "livingfloatlands:carnotaurus", "livingfloatlands:lycaenops", "livingfloatlands:smilodon", "livingfloatlands:tyrannosaurus", "livingfloatlands:velociraptor", "animalworld:divingbeetle", "animalworld:divingbeetle", "animalworld:scorpion", "animalworld:polarbear", "animalworld:leopardseal", "animalworld:stellerseagle", "player", "animalworld:wolf", "animalworld:panda", "animalworld:stingray", "marinaramobs:jellyfish", "marinaramobs:octopus", "livingcavesmobs:biter", "livingcavesmobs:flesheatingbacteria"},
	jump = false,
	jump_height = 6,
	drops = {
	},
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	fear_height = 2,
	animation = {
		speed_normal = 50,
		stand_start = 0,
		stand_end = 100,
		stand2_start = 200,
		stand2_end = 300,
		walk_start = 100,
		walk_end = 200,

	},
	fly_in = {"default:water_source", "default:water_flowing"},
	floats = 0,
	follow = {"animalworld:rawfish", "mobs_fish:tropical", "mobs:clownfish_raw", 
"mobs:bluefish_raw", "fishing:bait_worm", "fishing:clownfish_raw", "fishing:bluewhite_raw", "fishing:exoticfish_raw", "fishing:fish_raw", "fishing:carp_raw", "fishing:perch_raw", "water_life:meat_raw", "fishing:shark_raw", "fishing:pike_raw", "marinaramobs:octopus_raw", "marinaramobs:raw_exotic_fish"},
	view_range = 5,
	on_rightclick = function(self, clicker)

		if mobs:feed_tame(self, clicker, 8, true, true) then return end
		if mobs:protect(self, clicker) then return end
		if mobs:capture_mob(self, clicker, 0, 5, 50, false, nil) then return end
	end,
})


if not mobs.custom_spawn_marinaramobs then
mobs:spawn({
	name = "marinaramobs:seamouse",
	nodes = {"default:water_source"},
	neighbors = {"marinara:coastrock"},
	min_light = 0,
	interval = 60,
	chance = 2, -- 15000
	active_object_count = 2,
	min_height = -30,
	max_height = 0,
})
end


mobs:register_egg("marinaramobs:seamouse", ("Seamouse"), "aseamouse.png", 0)


mobs:alias_mob("marinaramobs:seamouse", "marinaramobs:seamouse") -- compatibility