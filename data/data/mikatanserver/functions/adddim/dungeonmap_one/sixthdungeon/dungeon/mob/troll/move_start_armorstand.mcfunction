
scoreboard players set @s MK.v.VecValue 2
function mikatanlib:vector/vectorexe
execute store result entity @s Motion[1] int 2 run scoreboard players get @s MK.v.VecValue
