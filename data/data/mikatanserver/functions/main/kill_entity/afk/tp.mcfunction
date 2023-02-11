scoreboard players add @s AFKTimer 1

scoreboard players reset @s ROD
execute in overworld run tp 0 100 0

execute if score @s AFKTimer matches 1200 run tag @s remove AFK
execute if score @s AFKTimer matches 1200 run scoreboard players reset @s AFKTimer