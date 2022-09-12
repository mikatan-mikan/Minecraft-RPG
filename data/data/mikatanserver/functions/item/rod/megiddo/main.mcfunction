scoreboard players remove @s mana 45

summon armor_stand ~ ~1 ~ {Tags:["megiddoAr","BeforeStoreMegiddoAr"],Invulnerable:1b,Invisible:1b}

execute as @e[tag=BeforeStoreMegiddoAr] store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0]
execute as @e[tag=BeforeStoreMegiddoAr] run scoreboard players set @s MK.v.VecValue 1
execute as @e[tag=BeforeStoreMegiddoAr] run function mikatanlib:vector/vectorexe
tag @e[tag=BeforeStoreMegiddoAr] remove BeforeStoreMegiddoAr

function mikatanserver:item/rod/megiddo/move