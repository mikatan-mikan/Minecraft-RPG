##-323 134 -16
kill @e[distance=..50,type=boat]
#x座標
scoreboard players set @s MK.r.RandValue 38
function mikatanlib:rand/rand_exe
scoreboard players add @s MK.r.RandValue 293
execute store result entity @s Pos[0] double 1 run scoreboard players get @s MK.r.RandValue
#y座標
scoreboard players set @s MK.r.RandValue 38
function mikatanlib:rand/rand_exe
scoreboard players add @s MK.r.RandValue 548
execute store result entity @s Pos[2] double 1 run scoreboard players get @s MK.r.RandValue