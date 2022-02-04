tp ^ ^ ^0.5

execute as @e[distance=..1,type=#mikatanserver:mobs] at @s run function mikatanserver:item/rod/through/damageexe
execute if entity @e[distance=..1,type=#mikatanserver:mobs] run kill @s
execute unless block ~ ~1 ~ air unless block ~ ~1 ~ cave_air run kill @s
execute if score @s NBthroughSwordTimer matches 40.. run kill @s

scoreboard players add @s NBthroughSwordTimer 1

execute if score @s NBthroughSwordTimer matches ..40 run schedule function mikatanserver:item/rod/through/move 1t