tp ^ ^ ^0.5

execute positioned ~ ~-1 ~ as @e[type=#mikatanserver:mobs,distance=..0.7] run function mikatanserver:item/rod/crystal/executation_damage

particle firework ~ ~ ~ 0.125 0.125 0.125 0 1
particle snowflake ~ ~ ~ 0.25 0.25 0.25 0 1

scoreboard players add @s crystalcount 1

execute positioned ~ ~-1 ~ if entity @e[type=#mikatanserver:mobs,distance=..0.7] run kill @s
execute if score @s crystalcount matches 20.. run tag @a remove crystalexe
execute if score @s crystalcount matches 20.. run kill @s