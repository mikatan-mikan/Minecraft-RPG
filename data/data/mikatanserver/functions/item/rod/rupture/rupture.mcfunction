## function mikatanserver:item/rod/rupture/rupture



scoreboard players set @s MK.r.RandValue 200
function mikatanlib:rand/rand_exe
scoreboard players remove @s MK.r.RandValue 100
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s MK.r.RandValue
scoreboard players set @s MK.r.RandValue 100
function mikatanlib:rand/rand_exe
scoreboard players add @s MK.r.RandValue 50
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s MK.r.RandValue
scoreboard players set @s MK.r.RandValue 200
function mikatanlib:rand/rand_exe
scoreboard players remove @s MK.r.RandValue 100
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s MK.r.RandValue

playsound item.armor.equip_leather master @a[distance=..15] ~ ~ ~ 2 1
playsound item.armor.equip_leather master @a[distance=..15] ~ ~ ~ 2 1

#kill @e[type=slime]