execute as @a run scoreboard players add @s SF_wand_counter 1
execute as @a unless score @s SF_wand_mana matches 100.. if score @s SF_wand_counter matches 3.. run scoreboard players add @s SF_wand_mana 1
execute as @a if score @s SF_wand_counter matches 3.. run scoreboard players set @s SF_wand_counter 0
execute as @a unless score @s SF_wand_build matches 5.. run scoreboard players add @s SF_wand_build 1
scoreboard players set @a[gamemode=creative] SF_wand_mana 100


execute as @e[type=marker] run scoreboard players add @s SF_wand_life 1

# lightning wand 7391
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 25.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7391}}}] at @s at @e[type=!#nodamage,distance=..25] run summon minecraft:lightning_bolt ~ ~ ~
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 25.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7391}}}] at @s if entity @e[type=!#nodamage,distance=..25] run scoreboard players remove @s SF_wand_mana 25

execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 25.. if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7391}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s at @e[type=!player,distance=..25] run summon minecraft:lightning_bolt ~ ~ ~
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 25.. if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7391}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s if entity @e[type=!#nodamage,distance=..25] run scoreboard players remove @s SF_wand_mana 25

# damage wand 7392
execute as @e[type=marker,name=SF_wand_1] run scoreboard players add @s SF_wand_life 1
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 10.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7392}}}] at @s positioned ~ ~1.6 ~ run summon marker ~ ~ ~ {CustomName:'{"text":"SF_wand_1"}'}
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 10.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7392}}}] at @s run scoreboard players remove @s SF_wand_mana 10

execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 10.. if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7392}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s positioned ~ ~1.6 ~ run summon marker ~ ~ ~ {CustomName:'{"text":"SF_wand_1"}'}
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 10.. if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7392}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run scoreboard players remove @s SF_wand_mana 10

execute as @e[type=marker,scores={SF_wand_life=100..},name=SF_wand_1] at @s run kill @s

execute as @a if score @s SF_wand_use matches 1.. at @s positioned ~ ~1.6 ~ run tp @e[type=marker,name=SF_wand_1,distance=..1] ~ ~ ~ ~ ~
execute as @e[type=minecraft:marker,name=SF_wand_1] at @s run tp ^ ^ ^.5
execute as @e[type=minecraft:marker,name=SF_wand_1] at @s run particle minecraft:dust_color_transition 1 0 1 1 0 0 1 ~ ~ ~ 0 0 0 0 10 force
execute as @e[type=minecraft:marker,name=SF_wand_1] at @s unless block ~ ~ ~ #airs run kill @s
execute at @e[type=minecraft:marker,name=SF_wand_1] positioned ~ ~-1 ~ as @e[distance=..1,type=!#nodamage] run scoreboard players add @s SF_wand_damage 5
execute at @e[type=minecraft:marker,name=SF_wand_1] positioned ~ ~-1 ~ at @e[distance=..1,type=!#nodamage] run particle minecraft:witch ~ ~1 ~ 0 .3 0 .01 100 force
execute as @e[type=minecraft:marker,name=SF_wand_1] at @s positioned ~ ~-1 ~ if entity @e[distance=..1,type=!#nodamage] run kill @s

# mining wand 7393
execute as @e[type=marker,name=SF_wand_2] run scoreboard players add @s SF_wand_life 1

execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 3.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7393}}}] at @s positioned ~ ~1.6 ~ run summon marker ~ ~ ~ {CustomName:'{"text":"SF_wand_2"}'}
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 3.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7393}}}] at @s run scoreboard players remove @s SF_wand_mana 3

execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 3.. if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7393}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s positioned ~ ~1.6 ~ run summon marker ~ ~ ~ {CustomName:'{"text":"SF_wand_2"}'}
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 3.. if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7393}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run scoreboard players remove @s SF_wand_mana 3

execute as @e[type=marker,scores={SF_wand_life=100..},name=SF_wand_2] at @s run kill @s

execute as @a if score @s SF_wand_use matches 1.. at @s positioned ~ ~1.6 ~ run tp @e[type=marker,name=SF_wand_2,distance=..1] ~ ~ ~ ~ ~
execute as @e[type=minecraft:marker,name=SF_wand_2] at @s run tp ^ ^ ^.5
execute as @e[type=minecraft:marker,name=SF_wand_2] at @s run particle minecraft:dust_color_transition 0 1 .3 1 0 .5 0 ~ ~ ~ 0 0 0 0 10 force
execute as @e[type=minecraft:marker,name=SF_wand_2] at @s unless block ~ ~ ~ #airs run tag @s add SF_wand_kill
execute as @e[type=minecraft:marker,name=SF_wand_2] at @s unless block ~ ~ ~ #airs unless block ~ ~ ~ #wither_immune run setblock ~ ~ ~ air destroy
execute as @e[type=minecraft:marker,name=SF_wand_2] at @s if entity @s[nbt={Tags:["SF_wand_kill"]}] run kill @s

# heal wand 7394
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 10.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7394}}}] at @s run effect give @s minecraft:regeneration 5 1 true
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 10.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7394}}}] at @s run particle minecraft:dust_color_transition 1 0 0 1 1 .5 .5 ~ ~1 ~ .5 .5 .5 0 50 force
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 10.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7394}}}] at @s run scoreboard players remove @s SF_wand_mana 10

execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 10.. if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7394}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run effect give @s minecraft:regeneration 5 1 true
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 10.. if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7394}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run particle minecraft:dust_color_transition 1 0 0 1 1 .5 .5 ~ ~1 ~ .5 .5 .5 0 50 force
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 10.. if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7394}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run scoreboard players remove @s SF_wand_mana 10

# build wand 7395
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_build matches 5.. if score @s SF_wand_mana matches 5.. if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7395}}],SelectedItem:{}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s positioned ~ ~1.6 ~ run summon marker ~ ~ ~ {CustomName:'{"text":"SF_wand_3"}'}
execute as @a if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7395}}],SelectedItem:{}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run summon marker ~ ~ ~ {CustomName:'{"text":"SF_wand_3_aim"}'}

execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_build matches 5.. if score @s SF_wand_mana matches 5.. if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7395}}],SelectedItem:{}}] if entity @s[nbt={SelectedItem:{id:"minecraft:sand"}}] at @s run advancement grant @s only minecraft:i_hate_sand

execute as @a if score @s SF_wand_use matches 1.. at @s positioned ~ ~1.6 ~ as @e[type=marker,name=SF_wand_3,distance=..1] at @s run data modify entity @s data.SF_wand_block set from entity @p SelectedItem.id
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_build matches 5.. if score @s SF_wand_mana matches 5.. if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7395}}],SelectedItem:{}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run item modify entity @s weapon.mainhand sfwands:remove_item

execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_build matches 5.. if score @s SF_wand_mana matches 5.. if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7395}}],SelectedItem:{}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run scoreboard players set @s SF_wand_build 0 
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 5.. if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7395}}],SelectedItem:{}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run scoreboard players remove @s SF_wand_mana 5

execute as @a if score @s SF_wand_use matches 1.. at @s positioned ~ ~1.6 ~ run tp @e[type=marker,name=SF_wand_3,distance=..1] ~ ~ ~ ~ ~
execute as @e[type=minecraft:marker,name=SF_wand_3_aim] at @s at @p[distance=..1] positioned ~ ~1.6 ~ run tp @s ~ ~ ~ ~ ~

function sfwands:build_aim_move
function sfwands:build_move

#void wand 7396
execute as @e[type=marker,name=SF_wand_4] run scoreboard players add @s SF_wand_life 1
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 100.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7396}}}] at @s positioned ~ ~1.6 ~ run summon marker ~ ~ ~ {CustomName:'{"text":"SF_wand_4"}'}
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 100.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:7396}}}] at @s run scoreboard players remove @s SF_wand_mana 100

execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 100.. if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7396}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s positioned ~ ~1.6 ~ run summon marker ~ ~ ~ {CustomName:'{"text":"SF_wand_4"}'}
execute as @a if score @s SF_wand_use matches 1.. if score @s SF_wand_mana matches 100.. if entity @s[nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData: 7396}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run scoreboard players remove @s SF_wand_mana 100

execute as @e[type=marker,scores={SF_wand_life=100..},name=SF_wand_4] at @s run kill @s

execute as @a if score @s SF_wand_use matches 1.. at @s positioned ~ ~1.6 ~ run tp @e[type=marker,name=SF_wand_4,distance=..1] ~ ~ ~ ~ ~
execute as @e[type=minecraft:marker,name=SF_wand_4] at @s run tp ^ ^ ^.5
execute as @e[type=minecraft:marker,name=SF_wand_4] at @s run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0 0 0 0 10 force
execute as @e[type=minecraft:marker,name=SF_wand_4] at @s unless block ~ ~ ~ #airs run kill @s
execute at @e[type=minecraft:marker,name=SF_wand_4] positioned ~ ~-1 ~ as @e[distance=..1,type=!#nodamage] run data merge entity @s {NoAI:1b}
execute at @e[type=minecraft:marker,name=SF_wand_4] positioned ~ ~-1 ~ as @e[distance=..1,type=!#nodamage] run tag @s add SF_wand_nullified
execute as @e[tag=SF_wand_nullified] at @s run particle minecraft:ash ~ ~1 ~ .4 .8 .4 0 1 force
execute as @e[type=minecraft:marker,name=SF_wand_4] at @s positioned ~ ~-1 ~ if entity @e[distance=..1,type=!#nodamage] run kill @s





#mage armor 7331
execute as @a[nbt={Inventory:[{id:"minecraft:book",tag:{CustomModelData:7331}}]}] if score @s SF_wand_resist matches 1.. if score @s SF_wand_mana matches 10.. if score @s SF_wand_armor matches ..0 at @s run scoreboard players operation @s SF_wand_mana -= @s SF_wand_damage
execute as @a[nbt={Inventory:[{id:"minecraft:book",tag:{CustomModelData:7331}}]}] if score @s SF_wand_mana matches 10.. if score @s SF_wand_armor matches ..0 at @s run effect give @s minecraft:resistance 1 3 true

#lava walker 7333

execute as @a[nbt={Inventory:[{id:"minecraft:book",tag:{CustomModelData:7333}}]}] at @s if score @s SF_wand_mana matches 2.. if block ~ ~-1 ~3 minecraft:lava[level=0] unless block ~ ~-1 ~ minecraft:lava unless block ~ ~-1 ~ #minecraft:airs run tag @s add SF_wand_lava
execute as @a[nbt={Inventory:[{id:"minecraft:book",tag:{CustomModelData:7333}}]}] at @s if score @s SF_wand_mana matches 2.. if block ~ ~-1 ~-3 minecraft:lava[level=0] unless block ~ ~-1 ~ minecraft:lava unless block ~ ~-1 ~ #minecraft:airs run tag @s add SF_wand_lava
execute as @a[nbt={Inventory:[{id:"minecraft:book",tag:{CustomModelData:7333}}]}] at @s if score @s SF_wand_mana matches 2.. if block ~3 ~-1 ~ minecraft:lava[level=0] unless block ~ ~-1 ~ minecraft:lava unless block ~ ~-1 ~ #minecraft:airs run tag @s add SF_wand_lava
execute as @a[nbt={Inventory:[{id:"minecraft:book",tag:{CustomModelData:7333}}]}] at @s if score @s SF_wand_mana matches 2.. if block ~-3 ~-1 ~ minecraft:lava[level=0] unless block ~ ~-1 ~ minecraft:lava unless block ~ ~-1 ~ #minecraft:airs run tag @s add SF_wand_lava
execute as @a[nbt={Inventory:[{id:"minecraft:book",tag:{CustomModelData:7333}}]}] at @s if score @s SF_wand_mana matches 2.. if block ~ ~-1 ~1 minecraft:lava[level=0] unless block ~ ~-1 ~ minecraft:lava unless block ~ ~-1 ~ #minecraft:airs run tag @s add SF_wand_lava
execute as @a[nbt={Inventory:[{id:"minecraft:book",tag:{CustomModelData:7333}}]}] at @s if score @s SF_wand_mana matches 2.. if block ~ ~-1 ~-1 minecraft:lava[level=0] unless block ~ ~-1 ~ minecraft:lava unless block ~ ~-1 ~ #minecraft:airs run tag @s add SF_wand_lava
execute as @a[nbt={Inventory:[{id:"minecraft:book",tag:{CustomModelData:7333}}]}] at @s if score @s SF_wand_mana matches 2.. if block ~1 ~-1 ~ minecraft:lava[level=0] unless block ~ ~-1 ~ minecraft:lava unless block ~ ~-1 ~ #minecraft:airs run tag @s add SF_wand_lava
execute as @a[nbt={Inventory:[{id:"minecraft:book",tag:{CustomModelData:7333}}]}] at @s if score @s SF_wand_mana matches 2.. if block ~-1 ~-1 ~ minecraft:lava[level=0] unless block ~ ~-1 ~ minecraft:lava unless block ~ ~-1 ~ #minecraft:airs run tag @s add SF_wand_lava
execute as @a[tag=SF_wand_lava] at @s align xyz positioned ~.5 ~-.5 ~.5 run function sfwands:lava_walker_summon
scoreboard players add @e[type=marker,name=SF_wand_lava_mark] SF_wand_lava 1
execute as @e[type=marker,name=SF_wand_lava_mark] at @s if score @s SF_wand_lava matches 1 unless block ~ ~ ~ minecraft:lava[level=0] run kill @s
execute as @e[type=marker,name=SF_wand_lava_mark] at @s if block ~ ~ ~ minecraft:lava[level=0] run setblock ~ ~ ~ minecraft:obsidian
execute as @e[type=marker,name=SF_wand_lava_mark] at @s if score @s SF_wand_lava matches 2.. unless block ~ ~ ~ minecraft:obsidian run kill @s
execute as @e[type=marker,name=SF_wand_lava_mark] at @s if score @s SF_wand_lava matches 200.. if block ~ ~ ~ minecraft:obsidian run setblock ~ ~ ~ minecraft:lava
execute as @e[type=marker,name=SF_wand_lava_mark] at @s if score @s SF_wand_lava matches 200.. run kill @s

execute as @a[tag=SF_wand_lava] at @s run scoreboard players remove @s SF_wand_mana 2


#flying gadget 7332
execute as @a[nbt={Inventory:[{id:"minecraft:book",tag:{CustomModelData:7332}}]}] if score @s SF_wand_mana matches 1.. if score @s SF_wand_crouch matches 1.. at @s run effect give @s levitation 1 2 true
execute as @a[nbt={Inventory:[{id:"minecraft:book",tag:{CustomModelData:7332}}]}] unless score @s SF_wand_crouch matches 1.. at @s run effect clear @s levitation
execute as @a[nbt={Inventory:[{id:"minecraft:book",tag:{CustomModelData:7332}}]}] unless score @s SF_wand_mana matches 1.. at @s run effect clear @s levitation
execute as @a[nbt={Inventory:[{id:"minecraft:book",tag:{CustomModelData:7332}}]}] if score @s SF_wand_mana matches 1.. if score @s SF_wand_crouch matches 1.. if score @s SF_wand_counter matches ..1 at @s run scoreboard players remove @s SF_wand_mana 1

execute as @a[nbt={Inventory:[{id:"minecraft:book",tag:{CustomModelData:7332}}]}] if score @s SF_wand_mana matches 1.. if score @s SF_wand_crouch matches 1.. at @s rotated ~ 0 positioned ~ ~-.25 ~ run particle minecraft:enchanted_hit ^ ^ ^-.3 0.1 0.1 0.1 0 10


scoreboard players set @a SF_wand_use 0
scoreboard players set @a SF_wand_resist 0
scoreboard players set @a SF_wand_crouch 0
tag @a remove SF_wand_lava
