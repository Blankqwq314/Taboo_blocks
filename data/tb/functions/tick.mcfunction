scoreboard players add load loadtime 1
scoreboard players add random tellraw_randomly 1
function tb:death_message
function tb:kill_nether
function tb:kill_end
tag @a remove dead
gamerule showDeathMessages true
kill @e[type=minecraft:item,sort=nearest,nbt={Item:{id:"minecraft:barrier"}}]
execute if entity @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:knowledge_book",tag:{Tags:["detector"]}}]}] run function tb:detect
execute if entity @p[nbt={SelectedItem:{tag:{Tags:["detector"]}}}] run function tb:detect

execute if score @p sneak_to_tellraw matches 1 run scoreboard players add @p[nbt={SelectedItem:{tag:{Tags:["detector"]}}}] selected_dimension 1
execute if score @p selected_dimension matches 61 run scoreboard players set @p selected_dimension 0
execute if score @p selected_dimension >= t1 t1 run scoreboard players set @p selected_dimension 0
execute if score @p sneak_to_tellraw matches 1 run scoreboard players add @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:knowledge_book",tag:{Tags:["detector"]}}]}] selected_dimension 1
execute if score @p sneak_to_tellraw matches 1 run scoreboard players set @p sneak_to_tellraw 0
execute if score random tellraw_randomly matches 10 run scoreboard players reset random tellraw_randomly
execute if score load loadtime matches 1200 run function tb:random_1
execute if score load loadtime matches 1200 run function tb:random_0
execute if score load loadtime matches 1200 run function tb:random
execute if score load loadtime matches 1200 run scoreboard players reset load loadtime

