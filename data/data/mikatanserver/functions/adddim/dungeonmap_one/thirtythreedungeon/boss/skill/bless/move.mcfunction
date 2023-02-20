particle dust 0.373 0.831 0.957 1 ~ ~ ~ 0.2 0.2 0.2 1 10
particle dust 1 1 1 1 ~ ~ ~ 0.2 0.2 0.2 1 10
particle dust 0.663 0.925 1 1 ~ ~ ~ 0.2 0.2 0.2 1 10

execute if score $33_Difficulty Temporary matches 0 run effect give @a[distance=..1] instant_damage 1 2
execute if score $33_Difficulty Temporary matches 1 run effect give @a[distance=..1] instant_damage 1 3

tp ^ ^ ^0.5
scoreboard players add @s ThirtythreeBossSkill 1
execute if score @s ThirtythreeBossSkill matches 60.. run kill @s