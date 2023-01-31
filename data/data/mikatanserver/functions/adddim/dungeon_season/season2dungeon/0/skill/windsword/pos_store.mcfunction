

#x座標
scoreboard players set @s MK.r.RandValue 38
function mikatanlib:rand/rand_exe
scoreboard players remove @s MK.r.RandValue 1301
execute store result entity @s Pos[0] double 1 run scoreboard players get @s MK.r.RandValue

#y座標
scoreboard players set @s MK.r.RandValue 38
function mikatanlib:rand/rand_exe
scoreboard players add @s MK.r.RandValue 1000
execute store result entity @s Pos[2] double 1 run scoreboard players get @s MK.r.RandValue

#data modify entity @s Pos[1] set value season27d

#data modify entity @s NoGravity set value 0b