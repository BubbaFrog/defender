-- SOUNDS LINK :
-- sword : https://freesound.org/people/Merrick079/sounds/568169/



local hunternods = {
"default:dirt", 
"default:dirt_with_rainforest",
"default:dirt_with_grass",
"default:dirt_with_dry_grass",
"default:dry_dirt_with_dry_grass",
"default:dirt_with_coniferous_litter",
"default:stone",
"default:ice", 
"default:snowblock",
"default:dirt_with_snow",
"default:sand", 
"default:desert_sand",
"default:desert_stone",
"default:stone", 
"default:desert_stone",
--"default:cobble",
"default:mossycobble", 
"default:chest",
"default:ice",

} 


---- SKULL SWORD  ------------------------------------------------------------------------------------------------------

mobs:register_mob("defender:snowflake", {
	-- nametag = "Hunters Axe" ,
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 3,
	damage = 6,
	hp_min = 30,
	hp_max = 30,
	armor = 100,
	collisionbox = {-0.4, -1, -0.4, 0.4, 0.9, 0.4},
	visual = "mesh",
	mesh = "hunter_axe.b3d",
	rotate = 180,
	textures = {
		{"snowflake.png"},
	},
	--glow = 4,
	--blood_texture = " ",
	makes_footstep_sound = true,
	sounds = {
		attack = "sword",
		--death = " ",
	},
	walk_velocity = 1,
	run_velocity = 5,
	jump_height = 2,
	stepheight = 1.1,
	floats = 0,
	view_range = 35,
	drops = {
		{name = "defender:skateboard", chance = 2, min = 1, max = 1},
		
	},
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 0,
		walk_start = 20,
		walk_end = 60,
		run_start = 80,
		run_end = 100,
		punch_start = 120,
		punch_end = 139,
	},
})



mobs:spawn({
	name = "defender:snowflake",
	nodes = hunternods,
	min_light = 0,
	max_light = 14,
	chance = 7000,
	--min_height = 0,
	--max_height = 200,
	max_height = 200,
	active_object_count = 1,
})


mobs:register_egg("defender:snowflake", "Libbie Snowflake", "snowflake_inv.png", 0)



--------------------------------------------------------------------------------
-------------------------------- Hunter AXE ------------------------------------
--------------------------------------------------------------------------------

minetest.register_tool("defender:skateboard", {
	description = core.colorize("#16c21e", "SkateBoard"), 
	inventory_image = "skateboard.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

