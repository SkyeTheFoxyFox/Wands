execute as @e[type=marker,name=SF_wand_3_aim] run scoreboard players add @s SF_wand_life 1
execute as @e[type=minecraft:marker,name=SF_wand_3_aim] at @s run tp ^ ^ ^0.5
#execute as @e[type=minecraft:marker,name=SF_wand_3_aim] at @s unless block ^ ^ ^.5 #airs positioned ~ ~-1.6 ~ run particle minecraft:flame ~ ~1.6 ~ 0 0 0 0 1
execute as @e[type=minecraft:marker,name=SF_wand_3_aim] at @s unless block ^ ^ ^.5 #airs align xyz positioned ~ ~ ~ run particle minecraft:dust_color_transition .5 .8 1 .5 0 0 .8 ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=minecraft:marker,name=SF_wand_3_aim] at @s unless block ^ ^ ^.5 #airs align xyz positioned ~1 ~ ~ run particle minecraft:dust_color_transition .5 .8 1 .5 0 0 .8 ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=minecraft:marker,name=SF_wand_3_aim] at @s unless block ^ ^ ^.5 #airs align xyz positioned ~ ~1 ~ run particle minecraft:dust_color_transition .5 .8 1 .5 0 0 .8 ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=minecraft:marker,name=SF_wand_3_aim] at @s unless block ^ ^ ^.5 #airs align xyz positioned ~1 ~1 ~ run particle minecraft:dust_color_transition .5 .8 1 .5 0 0 .8 ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=minecraft:marker,name=SF_wand_3_aim] at @s unless block ^ ^ ^.5 #airs align xyz positioned ~ ~ ~1 run particle minecraft:dust_color_transition .5 .8 1 .5 0 0 .8 ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=minecraft:marker,name=SF_wand_3_aim] at @s unless block ^ ^ ^.5 #airs align xyz positioned ~1 ~ ~1 run particle minecraft:dust_color_transition .5 .8 1 .5 0 0 .8 ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=minecraft:marker,name=SF_wand_3_aim] at @s unless block ^ ^ ^.5 #airs align xyz positioned ~ ~1 ~1 run particle minecraft:dust_color_transition .5 .8 1 .5 0 0 .8 ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=minecraft:marker,name=SF_wand_3_aim] at @s unless block ^ ^ ^.5 #airs align xyz positioned ~1 ~1 ~1 run particle minecraft:dust_color_transition .5 .8 1 .5 0 0 .8 ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=minecraft:marker,name=SF_wand_3_aim] at @s unless block ^ ^ ^.5 #airs run kill @s
execute as @e[type=marker,scores={SF_wand_life=100..},name=SF_wand_3_aim] at @s run kill @s

execute if entity @e[type=minecraft:marker,name=SF_wand_3_aim] run function sfwands:build_aim_move