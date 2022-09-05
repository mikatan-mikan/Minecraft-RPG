tp ^ ^ ^1

execute as @e[type=#mikatanserver:mobs,distance=..2] run function mikatanserver:item/rod/ember/executation_damage

particle firework ~ ~ ~ 0.125 0.125 0.125 0 10
particle flame ~ ~ ~ 0.25 0.25 0.25 0 50

scoreboard players add @s embercount 1

execute if entity @e[type=#mikatanserver:mobs,distance=..2] run kill @s
execute if score @s embercount matches 15.. run tag @s remove emberexe
execute if score @s embercount matches 15.. run kill @s