tp ^ ^ ^1

execute as @e[type=#mikatanserver:mobs,distance=..2] run function mikatanserver:item/rod/crystal/executation_damage

particle firework ~ ~ ~ 0.125 0.125 0.125 0 1
particle snowflake ~ ~ ~ 0.25 0.25 0.25 0 1

scoreboard players add @s crystalcount 1

execute if entity @e[type=#mikatanserver:mobs,distance=..2] run kill @s
execute if score @s crystalcount matches 10.. run tag @a remove crystalexe
execute if score @s crystalcount matches 10.. run kill @s