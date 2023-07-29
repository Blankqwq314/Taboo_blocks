execute as @a at @s run execute store result score @s health run data get entity @s Health
execute as @a at @s run execute if score @s health matches 0 run tag @s add dead

