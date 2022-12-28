execute as @e[tag=TpBef] run function mikatanserver:item/rod/forest/pos_tp
scoreboard players add @s ForestRod 1
particle sweep_attack ~ ~ ~ 0 0 0 1 10
effect give @e[type=#mikatanserver:mobs,distance=..1] levitation 1 100
execute if score @s ForestRod matches 20.. run kill @s