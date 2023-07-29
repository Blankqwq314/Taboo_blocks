execute as @a at @s run playsound minecraft:entity.player.levelup player @s
summon marker ~ 0 ~ {Tags:["random"]}
execute store result score rand nether run data get entity @e[tag=random,limit=1,type=marker] UUID[0]
kill @e[tag=random,type=marker]
scoreboard players operation random_interval nether = random_max nether
scoreboard players operation random_interval nether -= random_min nether
scoreboard players add random_interval nether 1
scoreboard players operation rand nether %= random_interval nether
scoreboard players operation rand nether += random_min nether
function tb:stand_nether