tp ^ ^ ^1

execute as @e[type=#mikatanserver:mobs,distance=..2] run function mikatanserver:item/rod/burt/executation_damage

particle firework ~ ~ ~ 0.125 0.125 0.125 0 10
particle item packed_ice ~ ~ ~ 0.25 0.25 0.25 0 50

scoreboard players add @s burtcount 1

execute if entity @e[type=#mikatanserver:mobs,distance=..2] run kill @s
execute if score @s burtcount matches 10.. run tag @a remove burtexe
execute if score @s burtcount matches 10.. run kill @s