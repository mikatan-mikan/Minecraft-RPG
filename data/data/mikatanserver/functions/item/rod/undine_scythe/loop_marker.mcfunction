particle dust 0.373 0.831 0.957 1 ~ ~ ~ 0.2 0.2 0.2 1 10
particle dust 1 1 1 1 ~ ~ ~ 0.2 0.2 0.2 1 10
particle dust 0.663 0.925 1 1 ~ ~ ~ 0.2 0.2 0.2 1 10


effect give @e[distance=..1,type=#mikatanserver:mobs] instant_damage 1 2

tp ^ ^ ^0.5
scoreboard players add @s ticktimer 1
execute if score @s ticktimer matches 60.. run kill @s