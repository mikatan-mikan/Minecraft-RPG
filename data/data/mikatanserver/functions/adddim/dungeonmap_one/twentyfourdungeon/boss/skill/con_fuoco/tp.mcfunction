#x座標
scoreboard players set @s MK.r.RandValue 380
function mikatanlib:rand/rand_exe
scoreboard players remove @s MK.r.RandValue 1860
# tellraw @a [{"text": "x:"},{"score":{"name": "@s","objective": "MK.r.RandValue"}}]
execute store result entity @s Pos[0] double 0.1 run scoreboard players get @s MK.r.RandValue

#y座標
scoreboard players set @s MK.r.RandValue 380
function mikatanlib:rand/rand_exe
scoreboard players add @s MK.r.RandValue 11760
# tellraw @a [{"text": "y:"},{"score":{"name": "@s","objective": "MK.r.RandValue"}}]
execute store result entity @s Pos[2] double 0.1 run scoreboard players get @s MK.r.RandValue

tag @s remove Twentyfour_TpBefore
