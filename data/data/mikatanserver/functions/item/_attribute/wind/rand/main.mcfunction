scoreboard players set @s MK.r.RandValue 359
function mikatanlib:rand/rand_exe
scoreboard players remove @s MK.r.RandValue 180
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s MK.r.RandValue

scoreboard players set @s MK.r.RandValue 180
function mikatanlib:rand/rand_exe
scoreboard players remove @s MK.r.RandValue 90
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s MK.r.RandValue

effect give @s poison 5 1