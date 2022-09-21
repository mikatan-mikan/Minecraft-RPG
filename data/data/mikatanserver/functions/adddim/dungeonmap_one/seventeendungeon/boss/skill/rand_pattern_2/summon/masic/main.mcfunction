## function mikatanserver:adddim/area/ruins/mob/masic_witch/masic/main
## this file runnner -> as at witch

playsound block.beacon.activate master @a[distance=..30] ~ ~ ~ 2 1.7
summon armor_stand ~ ~ ~ {Tags:["SeventeenDun_Witch_Ar","TagBefAr"],Small:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute store result score @s NowDic run data get entity @s Rotation[0]
execute store result entity @e[tag=TagBefAr,sort=nearest,limit=1] Rotation[0] float 1 run scoreboard players get @s NowDic
tag @e[tag=TagBefAr,sort=nearest,limit=1] remove TagBefAr
data merge entity @s {NoAI:false}
execute as @e[tag=SeventeenDun_Witch_Ar,sort=nearest,limit=1] at @s run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/rand_pattern_2/summon/masic/move_ar