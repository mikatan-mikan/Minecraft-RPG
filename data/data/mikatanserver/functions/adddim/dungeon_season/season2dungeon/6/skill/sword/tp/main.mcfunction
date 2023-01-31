##-323 134 -16
kill @e[distance=..50,type=boat]
#x座標
scoreboard players set @s MK.r.RandValue 27
function mikatanlib:rand/rand_exe
scoreboard players remove @s MK.r.RandValue 1301
execute store result entity @s Pos[0] double 1 run scoreboard players get @s MK.r.RandValue

#y座標
scoreboard players set @s MK.r.RandValue 27
function mikatanlib:rand/rand_exe
scoreboard players add @s MK.r.RandValue 1000
execute store result entity @s Pos[2] double 1 run scoreboard players get @s MK.r.RandValue