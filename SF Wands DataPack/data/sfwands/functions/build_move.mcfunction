execute as @e[type=marker,name=SF_wand_3] run scoreboard players add @s SF_wand_life 1
execute as @e[type=minecraft:marker,name=SF_wand_3] at @s run tp ^ ^ ^0.5
execute as @e[type=minecraft:marker,name=SF_wand_3] at @s positioned ~ ~-1.6 ~ run particle minecraft:dust_color_transition .5 .8 1 .5 0 0 .8 ~ ~1.6 ~ 0 0 0 0 1 normal @a[distance=2..]
execute as @e[type=minecraft:marker,name=SF_wand_3] at @s unless block ^ ^ ^.5 #airs align xyz positioned ~.5 ~-.5 ~.5 if block ~ ~ ~ #airs run setblock ~ ~ ~ barrier
execute as @e[type=minecraft:marker,name=SF_wand_3] at @s unless block ^ ^ ^.5 #airs align xyz positioned ~.5 ~ ~.5 run summon falling_block ~ ~ ~ {Time:1}
execute as @e[type=minecraft:marker,name=SF_wand_3] at @s unless block ^ ^ ^.5 #airs align xyz positioned ~.5 ~ ~.5 run data modify entity @e[type=minecraft:falling_block,limit=1,distance=..4] BlockState.Name set from entity @s data.SF_wand_block
execute as @e[type=minecraft:marker,name=SF_wand_3_2] at @s if block ~ ~ ~ sand run setblock ~ ~ ~ air
execute as @e[type=minecraft:marker,name=SF_wand_3_2] at @s if block ~ ~-1 ~ barrier run setblock ~ ~-1 ~ air
execute as @e[type=minecraft:marker,name=SF_wand_3_2] at @s run kill @s
execute as @e[type=minecraft:marker,name=SF_wand_3] at @s unless block ^ ^ ^.5 #airs align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {CustomName:'{"text":"SF_wand_3_2"}'}
execute as @e[type=minecraft:marker,name=SF_wand_3] at @s unless block ^ ^ ^.5 #airs run kill @s
execute as @e[type=marker,scores={SF_wand_life=100..},name=SF_wand_3] at @s run kill @s

execute if entity @e[type=minecraft:marker,name=SF_wand_3] run function sfwands:build_move
