## function mikatanserver:adddim/area/ruins/mob/masic_witch/masic/move_ar
## as at armor_stand

scoreboard players add @s TMP 1
particle flame ~ ~ ~-0.2 0 0 0 0 1
particle flame ~ ~ ~0.2 0 0 0 0 1
particle flame ~0.2 ~ ~ 0 0 0 0 1
particle flame ~-0.2 ~ ~ 0 0 0 0 1
particle flame ~ ~ ~ 0 0 0 0 1
tp ^ ^ ^1
execute as @a[distance=..1.5] run function mikatanserver:adddim/area/ruins/mob/masic_witch/masic/player_damage
execute if score @s TMP matches ..15 at @s run function mikatanserver:adddim/area/ruins/mob/masic_witch/masic/move_ar
execute unless score @s TMP matches ..15 run kill @s