scoreboard players add load loadtime 1
scoreboard players add random tellraw_randomly 1
function tb:death_message
function tb:kill_nether
function tb:kill_end
tag @a remove dead
gamerule showDeathMessages true
kill @e[type=minecraft:item,sort=nearest,nbt={Item:{id:"minecraft:barrier"}}]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:knowledge_book"}]}] at @s run tag @s add on_offhand
execute as @a[nbt={SelectedItem:{id:"minecraft:knowledge_book"}}] at @s run tag @s add on_mainhand
execute as @a[tag=on_offhand,nbt=!{Inventory:[{Slot:-106b,id:"minecraft:knowledge_book"}]}] at @s run tag @s remove on_offhand
execute as @a[tag=on_offhand,nbt=!{SelectedItem:{id:"minecraft:knowledge_book"}}] at @s run tag @s remove on_mainhand
execute as @a[nbt={SelectedItem:{id:"minecraft:knowledge_book"}}] at @s run function tb:detect
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:knowledge_book"}]}] at @s run function tb:detect2



execute if score random tellraw_randomly matches 10 run scoreboard players reset random tellraw_randomly
execute if score load loadtime matches 1200 run function tb:random_1
execute if score load loadtime matches 1200 run function tb:random_0
execute if score load loadtime matches 1200 run function tb:random
execute if score load loadtime matches 1200 run scoreboard players reset load loadtime

