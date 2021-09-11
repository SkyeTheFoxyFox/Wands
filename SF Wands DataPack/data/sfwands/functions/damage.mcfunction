execute as @e at @s store result score @s SF_wand_health run data get entity @s Health
execute as @e at @s if score @s SF_wand_damage matches 1.. run scoreboard players operation @s SF_wand_health -= @s SF_wand_damage
execute as @e at @s if score @s SF_wand_health matches ..0 run kill @s[type=!#nodamage]
execute as @e at @s if score @s SF_wand_damage matches 1.. store result entity @s Health float 1 run scoreboard players get @s SF_wand_health
scoreboard players set @e SF_wand_damage 0