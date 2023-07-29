execute as @a at @s run playsound minecraft:entity.player.levelup player @s
summon marker ~ 0 ~ {Tags:["random_1"]}
execute store result score rand the_end run data get entity @e[tag=random_1,limit=1,type=marker] UUID[0]
kill @e[tag=random_1,type=marker]
scoreboard players operation random_interval the_end = random_max the_end
scoreboard players operation random_interval the_end -= random_min the_end
scoreboard players add random_interval the_end 1
scoreboard players operation rand the_end %= random_interval the_end
scoreboard players operation rand the_end += random_min the_end
function tb:stand_end