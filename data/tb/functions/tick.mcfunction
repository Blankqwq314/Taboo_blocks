scoreboard players add load loadtime 1
scoreboard players add random tellraw_randomly 1
function tb:death_message
function tb:kill_nether
function tb:kill_end
tag @a remove dead
gamerule showDeathMessages true
kill @e[type=minecraft:item,sort=nearest,nbt={Item:{id:"minecraft:barrier"}}]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:knowledge_book",tag:{Tags:["detector"]}}]}] at @s run function tb:detect
execute as @a[nbt={SelectedItem:{tag:{Tags:["detector"]}}}] at @s run function tb:detect

execute as @a[scores={sneak_to_tellraw=1..}] run scoreboard players add @s[nbt={SelectedItem:{tag:{Tags:["detector"]}}}] selected_dimension 1
execute as @a[scores={sneak_to_tellraw=1..}] run scoreboard players add @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:knowledge_book",tag:{Tags:["detector"]}}]}] selected_dimension 1
execute as @a[scores={selected_dimension=60..}] run scoreboard players set @s selected_dimension 0
execute as @s[scores={sneak_to_tellraw=1..}] run scoreboard players add @e[type=player,nbt={Inventory:[{Slot:-106b,id:"minecraft:knowledge_book",tag:{Tags:["detector"]}}]}] selected_dimension 1
execute as @a[scores={sneak_to_tellraw=1..}] run scoreboard players set @s sneak_to_tellraw 0
execute if score random tellraw_randomly matches 10 run scoreboard players reset random tellraw_randomly
execute if score load loadtime matches 1200 run function tb:random_1
execute if score load loadtime matches 1200 run function tb:random_0
execute if score load loadtime matches 1200 run function tb:random
execute if score load loadtime matches 1200 run scoreboard players reset load loadtime

