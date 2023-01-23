##-323 134 -16
#x座標
scoreboard players set @s MK.r.RandValue 100
function mikatanlib:rand/rand_exe
scoreboard players add @s MK.r.RandValue 1622
execute store result entity @s Pos[0] double 1 run scoreboard players get @s MK.r.RandValue

#y座標
scoreboard players set @s MK.r.RandValue 100
function mikatanlib:rand/rand_exe
scoreboard players remove @s MK.r.RandValue 1626
execute store result entity @s Pos[2] double 1 run scoreboard players get @s MK.r.RandValue