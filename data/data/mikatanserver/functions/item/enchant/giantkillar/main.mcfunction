tag @s add Executegiantkillar
summon armor_stand ~ ~1.4 ~ {Tags:["giantkillarAr"],NoGravity:1b,Invisible:1b}
execute at @s run execute store result entity @e[tag=giantkillarAr,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute at @s run execute store result entity @e[tag=giantkillarAr,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
execute at @s run function mikatanserver:item/enchant/giantkillar/armor