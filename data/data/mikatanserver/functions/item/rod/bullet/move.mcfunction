tp @s ^ ^ ^1
scoreboard players add @s bulletrodtimer 1
execute as @e[type=#mikatanserver:mobs,distance=..1] run function mikatanserver:item/rod/bullet/damage
execute if score @s bulletrodtimer matches 10.. run kill @s