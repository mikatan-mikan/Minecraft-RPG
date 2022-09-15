## function mikatanserver:adddim/area/ruins/mob/masic_witch/masic/move_ar
## as at armor_stand

scoreboard players add @s TMP 1
particle end_rod ~ ~ ~-0.2 0 0 0 0 1
particle end_rod ~ ~ ~0.2 0 0 0 0 1
particle end_rod ~0.2 ~ ~ 0 0 0 0 1
particle end_rod ~-0.2 ~ ~ 0 0 0 0 1
particle end_rod ~ ~ ~ 0 0 0 0 1
tp ^ ^ ^1
execute as @e[distance=..1.5,type=#mikatanserver:mobs] run function mikatanserver:item/rod/ruins/mob_damage
execute if score @s TMP matches ..15 at @s run function mikatanserver:item/rod/ruins/move_ar
execute unless score @s TMP matches ..15 run tag @a[distance=..20,limit=1] remove ruins_exe
execute unless score @s TMP matches ..15 run kill @s