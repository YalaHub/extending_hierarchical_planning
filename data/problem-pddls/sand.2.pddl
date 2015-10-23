(define
	(problem sand)
	(:domain minecraft-beta)

	(:objects
		g11 g12 g13 g21 g22 g23 g31 g32 g33 - craftgrid
		m0_0 m0_1 m0_2 m0_3 m0_4 m1_0 m1_1 m1_2 m1_3 m1_4 m2_0 m2_1 m2_2 m2_3 m2_4 m3_0 m3_1 m3_2 m3_3 m3_4 m4_0 m4_1 m4_2 m4_3 m4_4 - mapgrid
		water
		chicken
		sheep
		cow
		cobweb
		grass
		tallgrass
		wheatgrass
		tree
		rock
		sandrock
		soil
		farmland
		claysoil
		coalore
		ironore-rock
		brown-mushroom
		red-mushroom
		skeleton
		sugarcane
			- resource

		egg
		fish
		cookedfish
		wool
		string
		seeds
		wheat
		wood
		sand
		clay
		stone
		sandstone
		plank
		stick
		coal
		ironore
		iron
		brown-mushroom
		red-mushroom
		bone
		bonemeal
		wood-door
		wood-stairs
		stone-stairs
		brick-stairs
		stonebrick-stairs
		iron-door
		clayblock
		stonebrick
		glass
		glasspane
		ladder
		fence
		sugar
		paper
		bed
		bread
		mushroomstew
		milk
		ironbar
		claybrick
		brick
		cut-sugarcane
		bowl
			- material

		hand
		furnace
		torch
		chest
		bucket
		fishingrod
		shears
		wood-pickaxe
		wood-axe
		wood-hoe
		wood-shovel
			- tool

	)

	(:init
		(player-at m0_0)
		(= (current-harvest-duration) 0)
		(= (current-harvest-location) 0)
		(= (furnace-fuel) 0)
		(= (tool-in-hand) 0)
		(= (tool-id hand) 0)
		(= (tool-id furnace) 4)
		(= (tool-id torch) 5)
		(= (tool-id chest) 6)
		(= (tool-id bucket) 7)
		(= (tool-id fishingrod) 8)
		(= (tool-id shears) 9)
		(= (tool-id wood-pickaxe) 10)
		(= (tool-id wood-axe) 11)
		(= (tool-id wood-hoe) 12)
		(= (tool-id wood-shovel) 13)
		(craft-empty g11)
		(craft-empty g12)
		(craft-empty g13)
		(craft-empty g21)
		(craft-empty g22)
		(craft-empty g23)
		(craft-empty g31)
		(craft-empty g32)
		(craft-empty g33)
		(= (thing-available egg) 0)
		(= (thing-available fish) 0)
		(= (thing-available cookedfish) 0)
		(= (thing-available wool) 0)
		(= (thing-available string) 0)
		(= (thing-available seeds) 0)
		(= (thing-available wheat) 0)
		(= (thing-available wood) 0)
		(= (thing-available sand) 0)
		(= (thing-available clay) 0)
		(= (thing-available stone) 0)
		(= (thing-available sandstone) 0)
		(= (thing-available plank) 0)
		(= (thing-available stick) 0)
		(= (thing-available coal) 0)
		(= (thing-available ironore) 0)
		(= (thing-available iron) 0)
		(= (thing-available brown-mushroom) 0)
		(= (thing-available red-mushroom) 0)
		(= (thing-available bone) 0)
		(= (thing-available bonemeal) 0)
		(= (thing-available wood-door) 0)
		(= (thing-available wood-stairs) 0)
		(= (thing-available stone-stairs) 0)
		(= (thing-available brick-stairs) 0)
		(= (thing-available stonebrick-stairs) 0)
		(= (thing-available iron-door) 0)
		(= (thing-available clayblock) 0)
		(= (thing-available stonebrick) 0)
		(= (thing-available glass) 0)
		(= (thing-available glasspane) 0)
		(= (thing-available ladder) 0)
		(= (thing-available fence) 0)
		(= (thing-available sugar) 0)
		(= (thing-available paper) 0)
		(= (thing-available bed) 0)
		(= (thing-available bread) 0)
		(= (thing-available mushroomstew) 0)
		(= (thing-available milk) 0)
		(= (thing-available ironbar) 0)
		(= (thing-available claybrick) 0)
		(= (thing-available brick) 0)
		(= (thing-available cut-sugarcane) 0)
		(= (thing-available bowl) 0)
		(= (thing-available hand) 1)
		(= (thing-available furnace) 0)
		(= (thing-available torch) 0)
		(= (thing-available chest) 0)
		(= (thing-available bucket) 0)
		(= (thing-available fishingrod) 0)
		(= (thing-available shears) 0)
		(= (thing-available wood-pickaxe) 0)
		(= (thing-available wood-axe) 0)
		(= (thing-available wood-hoe) 0)
		(= (thing-available wood-shovel) 0)
		(connect m0_0 m0_1) 
		(connect m0_0 m1_0) 
		(connect m0_0 m1_1) 
		(connect m0_1 m0_0) 
		(connect m0_1 m0_2) 
		(connect m0_1 m1_0) 
		(connect m0_1 m1_1) 
		(connect m0_1 m1_2) 
		(connect m0_2 m0_1) 
		(connect m0_2 m0_3) 
		(connect m0_2 m1_1) 
		(connect m0_2 m1_2) 
		(connect m0_2 m1_3) 
		(connect m0_3 m0_2) 
		(connect m0_3 m0_4) 
		(connect m0_3 m1_2) 
		(connect m0_3 m1_3) 
		(connect m0_3 m1_4) 
		(connect m0_4 m0_3) 
		(connect m0_4 m1_3) 
		(connect m0_4 m1_4) 
		(connect m1_0 m0_0) 
		(connect m1_0 m0_1) 
		(connect m1_0 m1_1) 
		(connect m1_0 m2_0) 
		(connect m1_0 m2_1) 
		(connect m1_1 m0_0) 
		(connect m1_1 m0_1) 
		(connect m1_1 m0_2) 
		(connect m1_1 m1_0) 
		(connect m1_1 m1_2) 
		(connect m1_1 m2_0) 
		(connect m1_1 m2_1) 
		(connect m1_1 m2_2) 
		(connect m1_2 m0_1) 
		(connect m1_2 m0_2) 
		(connect m1_2 m0_3) 
		(connect m1_2 m1_1) 
		(connect m1_2 m1_3) 
		(connect m1_2 m2_1) 
		(connect m1_2 m2_2) 
		(connect m1_2 m2_3) 
		(connect m1_3 m0_2) 
		(connect m1_3 m0_3) 
		(connect m1_3 m0_4) 
		(connect m1_3 m1_2) 
		(connect m1_3 m1_4) 
		(connect m1_3 m2_2) 
		(connect m1_3 m2_3) 
		(connect m1_3 m2_4) 
		(connect m1_4 m0_3) 
		(connect m1_4 m0_4) 
		(connect m1_4 m1_3) 
		(connect m1_4 m2_3) 
		(connect m1_4 m2_4) 
		(connect m2_0 m1_0) 
		(connect m2_0 m1_1) 
		(connect m2_0 m2_1) 
		(connect m2_0 m3_0) 
		(connect m2_0 m3_1) 
		(connect m2_1 m1_0) 
		(connect m2_1 m1_1) 
		(connect m2_1 m1_2) 
		(connect m2_1 m2_0) 
		(connect m2_1 m2_2) 
		(connect m2_1 m3_0) 
		(connect m2_1 m3_1) 
		(connect m2_1 m3_2) 
		(connect m2_2 m1_1) 
		(connect m2_2 m1_2) 
		(connect m2_2 m1_3) 
		(connect m2_2 m2_1) 
		(connect m2_2 m2_3) 
		(connect m2_2 m3_1) 
		(connect m2_2 m3_2) 
		(connect m2_2 m3_3) 
		(connect m2_3 m1_2) 
		(connect m2_3 m1_3) 
		(connect m2_3 m1_4) 
		(connect m2_3 m2_2) 
		(connect m2_3 m2_4) 
		(connect m2_3 m3_2) 
		(connect m2_3 m3_3) 
		(connect m2_3 m3_4) 
		(connect m2_4 m1_3) 
		(connect m2_4 m1_4) 
		(connect m2_4 m2_3) 
		(connect m2_4 m3_3) 
		(connect m2_4 m3_4) 
		(connect m3_0 m2_0) 
		(connect m3_0 m2_1) 
		(connect m3_0 m3_1) 
		(connect m3_0 m4_0) 
		(connect m3_0 m4_1) 
		(connect m3_1 m2_0) 
		(connect m3_1 m2_1) 
		(connect m3_1 m2_2) 
		(connect m3_1 m3_0) 
		(connect m3_1 m3_2) 
		(connect m3_1 m4_0) 
		(connect m3_1 m4_1) 
		(connect m3_1 m4_2) 
		(connect m3_2 m2_1) 
		(connect m3_2 m2_2) 
		(connect m3_2 m2_3) 
		(connect m3_2 m3_1) 
		(connect m3_2 m3_3) 
		(connect m3_2 m4_1) 
		(connect m3_2 m4_2) 
		(connect m3_2 m4_3) 
		(connect m3_3 m2_2) 
		(connect m3_3 m2_3) 
		(connect m3_3 m2_4) 
		(connect m3_3 m3_2) 
		(connect m3_3 m3_4) 
		(connect m3_3 m4_2) 
		(connect m3_3 m4_3) 
		(connect m3_3 m4_4) 
		(connect m3_4 m2_3) 
		(connect m3_4 m2_4) 
		(connect m3_4 m3_3) 
		(connect m3_4 m4_3) 
		(connect m3_4 m4_4) 
		(connect m4_0 m3_0) 
		(connect m4_0 m3_1) 
		(connect m4_0 m4_1) 
		(connect m4_1 m3_0) 
		(connect m4_1 m3_1) 
		(connect m4_1 m3_2) 
		(connect m4_1 m4_0) 
		(connect m4_1 m4_2) 
		(connect m4_2 m3_1) 
		(connect m4_2 m3_2) 
		(connect m4_2 m3_3) 
		(connect m4_2 m4_1) 
		(connect m4_2 m4_3) 
		(connect m4_3 m3_2) 
		(connect m4_3 m3_3) 
		(connect m4_3 m3_4) 
		(connect m4_3 m4_2) 
		(connect m4_3 m4_4) 
		(connect m4_4 m3_3) 
		(connect m4_4 m3_4) 
		(connect m4_4 m4_3) 
		(= (location-id m0_0) 2)
		(= (location-id m0_1) 3)
		(= (location-id m0_2) 4)
		(= (location-id m0_3) 5)
		(= (location-id m0_4) 6)
		(= (location-id m1_0) 7)
		(= (location-id m1_1) 8)
		(= (location-id m1_2) 9)
		(= (location-id m1_3) 10)
		(= (location-id m1_4) 11)
		(= (location-id m2_0) 12)
		(= (location-id m2_1) 13)
		(= (location-id m2_2) 14)
		(= (location-id m2_3) 15)
		(= (location-id m2_4) 16)
		(= (location-id m3_0) 17)
		(= (location-id m3_1) 18)
		(= (location-id m3_2) 19)
		(= (location-id m3_3) 20)
		(= (location-id m3_4) 21)
		(= (location-id m4_0) 22)
		(= (location-id m4_1) 23)
		(= (location-id m4_2) 24)
		(= (location-id m4_3) 25)
		(= (location-id m4_4) 26)
		(thing-at-map tree m0_2) 
		(thing-at-map tree m1_3) 
		(thing-at-map soil m2_0) 
		(thing-at-map soil m4_0) 
		(= (duration-need hand water) 1000000000)
		(= (duration-need hand chicken) 1)
		(= (duration-need hand sheep) 1000000000)
		(= (duration-need hand cow) 1000000000)
		(= (duration-need hand cobweb) 1000000000)
		(= (duration-need hand grass) 1000000000)
		(= (duration-need hand tallgrass) 1000000000)
		(= (duration-need hand wheatgrass) 1000000000)
		(= (duration-need hand tree) 1)
		(= (duration-need hand rock) 1000000000)
		(= (duration-need hand sandrock) 1000000000)
		(= (duration-need hand soil) 1000000000)
		(= (duration-need hand farmland) 1000000000)
		(= (duration-need hand claysoil) 1000000000)
		(= (duration-need hand coalore) 1000000000)
		(= (duration-need hand ironore-rock) 1000000000)
		(= (duration-need hand brown-mushroom) 1)
		(= (duration-need hand red-mushroom) 1)
		(= (duration-need hand skeleton) 1)
		(= (duration-need hand sugarcane) 1000000000)
		(= (duration-need furnace water) 1000000000)
		(= (duration-need furnace chicken) 1000000000)
		(= (duration-need furnace sheep) 1000000000)
		(= (duration-need furnace cow) 1000000000)
		(= (duration-need furnace cobweb) 1000000000)
		(= (duration-need furnace grass) 1000000000)
		(= (duration-need furnace tallgrass) 1000000000)
		(= (duration-need furnace wheatgrass) 1000000000)
		(= (duration-need furnace tree) 1000000000)
		(= (duration-need furnace rock) 1000000000)
		(= (duration-need furnace sandrock) 1000000000)
		(= (duration-need furnace soil) 1000000000)
		(= (duration-need furnace farmland) 1000000000)
		(= (duration-need furnace claysoil) 1000000000)
		(= (duration-need furnace coalore) 1000000000)
		(= (duration-need furnace ironore-rock) 1000000000)
		(= (duration-need furnace brown-mushroom) 1000000000)
		(= (duration-need furnace red-mushroom) 1000000000)
		(= (duration-need furnace skeleton) 1000000000)
		(= (duration-need furnace sugarcane) 1000000000)
		(= (duration-need torch water) 1000000000)
		(= (duration-need torch chicken) 1000000000)
		(= (duration-need torch sheep) 1000000000)
		(= (duration-need torch cow) 1000000000)
		(= (duration-need torch cobweb) 1000000000)
		(= (duration-need torch grass) 1000000000)
		(= (duration-need torch tallgrass) 1000000000)
		(= (duration-need torch wheatgrass) 1000000000)
		(= (duration-need torch tree) 1000000000)
		(= (duration-need torch rock) 1000000000)
		(= (duration-need torch sandrock) 1000000000)
		(= (duration-need torch soil) 1000000000)
		(= (duration-need torch farmland) 1000000000)
		(= (duration-need torch claysoil) 1000000000)
		(= (duration-need torch coalore) 1000000000)
		(= (duration-need torch ironore-rock) 1000000000)
		(= (duration-need torch brown-mushroom) 1000000000)
		(= (duration-need torch red-mushroom) 1000000000)
		(= (duration-need torch skeleton) 1000000000)
		(= (duration-need torch sugarcane) 1000000000)
		(= (duration-need chest water) 1000000000)
		(= (duration-need chest chicken) 1000000000)
		(= (duration-need chest sheep) 1000000000)
		(= (duration-need chest cow) 1000000000)
		(= (duration-need chest cobweb) 1000000000)
		(= (duration-need chest grass) 1000000000)
		(= (duration-need chest tallgrass) 1000000000)
		(= (duration-need chest wheatgrass) 1000000000)
		(= (duration-need chest tree) 1000000000)
		(= (duration-need chest rock) 1000000000)
		(= (duration-need chest sandrock) 1000000000)
		(= (duration-need chest soil) 1000000000)
		(= (duration-need chest farmland) 1000000000)
		(= (duration-need chest claysoil) 1000000000)
		(= (duration-need chest coalore) 1000000000)
		(= (duration-need chest ironore-rock) 1000000000)
		(= (duration-need chest brown-mushroom) 1000000000)
		(= (duration-need chest red-mushroom) 1000000000)
		(= (duration-need chest skeleton) 1000000000)
		(= (duration-need chest sugarcane) 1000000000)
		(= (duration-need bucket water) 1)
		(= (duration-need bucket chicken) 1000000000)
		(= (duration-need bucket sheep) 1000000000)
		(= (duration-need bucket cow) 1)
		(= (duration-need bucket cobweb) 1000000000)
		(= (duration-need bucket grass) 1000000000)
		(= (duration-need bucket tallgrass) 1000000000)
		(= (duration-need bucket wheatgrass) 1000000000)
		(= (duration-need bucket tree) 1000000000)
		(= (duration-need bucket rock) 1000000000)
		(= (duration-need bucket sandrock) 1000000000)
		(= (duration-need bucket soil) 1000000000)
		(= (duration-need bucket farmland) 1000000000)
		(= (duration-need bucket claysoil) 1000000000)
		(= (duration-need bucket coalore) 1000000000)
		(= (duration-need bucket ironore-rock) 1000000000)
		(= (duration-need bucket brown-mushroom) 1000000000)
		(= (duration-need bucket red-mushroom) 1000000000)
		(= (duration-need bucket skeleton) 1000000000)
		(= (duration-need bucket sugarcane) 1000000000)
		(= (duration-need fishingrod water) 1)
		(= (duration-need fishingrod chicken) 1000000000)
		(= (duration-need fishingrod sheep) 1000000000)
		(= (duration-need fishingrod cow) 1000000000)
		(= (duration-need fishingrod cobweb) 1000000000)
		(= (duration-need fishingrod grass) 1000000000)
		(= (duration-need fishingrod tallgrass) 1000000000)
		(= (duration-need fishingrod wheatgrass) 1000000000)
		(= (duration-need fishingrod tree) 1000000000)
		(= (duration-need fishingrod rock) 1000000000)
		(= (duration-need fishingrod sandrock) 1000000000)
		(= (duration-need fishingrod soil) 1000000000)
		(= (duration-need fishingrod farmland) 1000000000)
		(= (duration-need fishingrod claysoil) 1000000000)
		(= (duration-need fishingrod coalore) 1000000000)
		(= (duration-need fishingrod ironore-rock) 1000000000)
		(= (duration-need fishingrod brown-mushroom) 1000000000)
		(= (duration-need fishingrod red-mushroom) 1000000000)
		(= (duration-need fishingrod skeleton) 1000000000)
		(= (duration-need fishingrod sugarcane) 1000000000)
		(= (duration-need shears water) 1000000000)
		(= (duration-need shears chicken) 1000000000)
		(= (duration-need shears sheep) 1)
		(= (duration-need shears cow) 1000000000)
		(= (duration-need shears cobweb) 1)
		(= (duration-need shears grass) 1000000000)
		(= (duration-need shears tallgrass) 1)
		(= (duration-need shears wheatgrass) 1)
		(= (duration-need shears tree) 1000000000)
		(= (duration-need shears rock) 1000000000)
		(= (duration-need shears sandrock) 1000000000)
		(= (duration-need shears soil) 1000000000)
		(= (duration-need shears farmland) 1000000000)
		(= (duration-need shears claysoil) 1000000000)
		(= (duration-need shears coalore) 1000000000)
		(= (duration-need shears ironore-rock) 1000000000)
		(= (duration-need shears brown-mushroom) 1000000000)
		(= (duration-need shears red-mushroom) 1000000000)
		(= (duration-need shears skeleton) 1000000000)
		(= (duration-need shears sugarcane) 1000000000)
		(= (duration-need wood-pickaxe water) 1000000000)
		(= (duration-need wood-pickaxe chicken) 1000000000)
		(= (duration-need wood-pickaxe sheep) 1000000000)
		(= (duration-need wood-pickaxe cow) 1000000000)
		(= (duration-need wood-pickaxe cobweb) 1000000000)
		(= (duration-need wood-pickaxe grass) 1000000000)
		(= (duration-need wood-pickaxe tallgrass) 1000000000)
		(= (duration-need wood-pickaxe wheatgrass) 1000000000)
		(= (duration-need wood-pickaxe tree) 1)
		(= (duration-need wood-pickaxe rock) 1)
		(= (duration-need wood-pickaxe sandrock) 1)
		(= (duration-need wood-pickaxe soil) 1000000000)
		(= (duration-need wood-pickaxe farmland) 1000000000)
		(= (duration-need wood-pickaxe claysoil) 1000000000)
		(= (duration-need wood-pickaxe coalore) 1)
		(= (duration-need wood-pickaxe ironore-rock) 1)
		(= (duration-need wood-pickaxe brown-mushroom) 1000000000)
		(= (duration-need wood-pickaxe red-mushroom) 1000000000)
		(= (duration-need wood-pickaxe skeleton) 1000000000)
		(= (duration-need wood-pickaxe sugarcane) 1000000000)
		(= (duration-need wood-axe water) 1000000000)
		(= (duration-need wood-axe chicken) 1000000000)
		(= (duration-need wood-axe sheep) 1000000000)
		(= (duration-need wood-axe cow) 1000000000)
		(= (duration-need wood-axe cobweb) 1000000000)
		(= (duration-need wood-axe grass) 1000000000)
		(= (duration-need wood-axe tallgrass) 1000000000)
		(= (duration-need wood-axe wheatgrass) 1000000000)
		(= (duration-need wood-axe tree) 1)
		(= (duration-need wood-axe rock) 1000000000)
		(= (duration-need wood-axe sandrock) 1000000000)
		(= (duration-need wood-axe soil) 1000000000)
		(= (duration-need wood-axe farmland) 1000000000)
		(= (duration-need wood-axe claysoil) 1000000000)
		(= (duration-need wood-axe coalore) 1000000000)
		(= (duration-need wood-axe ironore-rock) 1000000000)
		(= (duration-need wood-axe brown-mushroom) 1000000000)
		(= (duration-need wood-axe red-mushroom) 1000000000)
		(= (duration-need wood-axe skeleton) 1000000000)
		(= (duration-need wood-axe sugarcane) 1)
		(= (duration-need wood-hoe water) 1000000000)
		(= (duration-need wood-hoe chicken) 1000000000)
		(= (duration-need wood-hoe sheep) 1000000000)
		(= (duration-need wood-hoe cow) 1000000000)
		(= (duration-need wood-hoe cobweb) 1000000000)
		(= (duration-need wood-hoe grass) 1000000000)
		(= (duration-need wood-hoe tallgrass) 1000000000)
		(= (duration-need wood-hoe wheatgrass) 1000000000)
		(= (duration-need wood-hoe tree) 1000000000)
		(= (duration-need wood-hoe rock) 1000000000)
		(= (duration-need wood-hoe sandrock) 1000000000)
		(= (duration-need wood-hoe soil) 1000000000)
		(= (duration-need wood-hoe farmland) 1)
		(= (duration-need wood-hoe claysoil) 1000000000)
		(= (duration-need wood-hoe coalore) 1000000000)
		(= (duration-need wood-hoe ironore-rock) 1000000000)
		(= (duration-need wood-hoe brown-mushroom) 1000000000)
		(= (duration-need wood-hoe red-mushroom) 1000000000)
		(= (duration-need wood-hoe skeleton) 1000000000)
		(= (duration-need wood-hoe sugarcane) 1000000000)
		(= (duration-need wood-shovel water) 1000000000)
		(= (duration-need wood-shovel chicken) 1000000000)
		(= (duration-need wood-shovel sheep) 1000000000)
		(= (duration-need wood-shovel cow) 1000000000)
		(= (duration-need wood-shovel cobweb) 1000000000)
		(= (duration-need wood-shovel grass) 1000000000)
		(= (duration-need wood-shovel tallgrass) 1000000000)
		(= (duration-need wood-shovel wheatgrass) 1000000000)
		(= (duration-need wood-shovel tree) 1000000000)
		(= (duration-need wood-shovel rock) 1000000000)
		(= (duration-need wood-shovel sandrock) 1000000000)
		(= (duration-need wood-shovel soil) 1)
		(= (duration-need wood-shovel farmland) 1000000000)
		(= (duration-need wood-shovel claysoil) 1)
		(= (duration-need wood-shovel coalore) 1000000000)
		(= (duration-need wood-shovel ironore-rock) 1000000000)
		(= (duration-need wood-shovel brown-mushroom) 1000000000)
		(= (duration-need wood-shovel red-mushroom) 1000000000)
		(= (duration-need wood-shovel skeleton) 1000000000)
		(= (duration-need wood-shovel sugarcane) 1000000000)
		(= (tool-max-health hand) 1000000000)
		(= (tool-max-health furnace) 1000000000)
		(= (tool-max-health torch) 1000000000)
		(= (tool-max-health chest) 1000000000)
		(= (tool-max-health bucket) 1000000000)
		(= (tool-max-health fishingrod) 1000000000)
		(= (tool-max-health shears) 1000000000)
		(= (tool-max-health wood-pickaxe) 60)
		(= (tool-max-health wood-axe) 60)
		(= (tool-max-health wood-hoe) 60)
		(= (tool-max-health wood-shovel) 60)
		(= (tool-current-health hand) 1000000000)
		(= (tool-current-health furnace) 1000000000)
		(= (tool-current-health torch) 1000000000)
		(= (tool-current-health chest) 1000000000)
		(= (tool-current-health bucket) 1000000000)
		(= (tool-current-health fishingrod) 1000000000)
		(= (tool-current-health shears) 1000000000)
		(= (tool-current-health wood-pickaxe) 60)
		(= (tool-current-health wood-axe) 60)
		(= (tool-current-health wood-hoe) 60)
		(= (tool-current-health wood-shovel) 60)
	)

	(:goal
		(and
			(> (thing-available sand) 0)
		)
	)
)

