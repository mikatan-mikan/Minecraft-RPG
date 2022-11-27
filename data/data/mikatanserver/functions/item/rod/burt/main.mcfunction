scoreboard players set $mana TMP 35
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

tag @s add burtexe

summon armor_stand ~ ~1 ~ {Tags:["BurtAr"],Invisible:1b,Invulnerable:1b}

execute store result entity @e[tag=BurtAr,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]

execute store result entity @e[tag=BurtAr,limit=1,sort=nearest] Rotation[1] float 1 run data get entity @s Rotation[1]

playsound block.glass.break master @a[distance=..20] ~ ~ ~ 1 0.3

function mikatanserver:item/rod/burt/executation