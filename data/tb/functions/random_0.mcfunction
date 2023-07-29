execute as @a at @s run playsound minecraft:entity.player.levelup player @s
summon marker ~ 0 ~ {Tags:["random_0"]}
execute store result score rand overworld run data get entity @e[tag=random_0,limit=1,type=marker] UUID[0]
kill @e[tag=random_0,type=marker]
scoreboard players operation random_interval overworld = random_max overworld
scoreboard players operation random_interval overworld -= random_min overworld
scoreboard players add random_interval overworld 1
scoreboard players operation rand overworld %= random_interval overworld
scoreboard players operation rand overworld += random_min overworld
function tb:stand