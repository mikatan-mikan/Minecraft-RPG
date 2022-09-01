scoreboard players remove @s mana 60

summon armor_stand ~ ~1 ~ {Tags:["luckrodAr","BeforeStoreLuckrodAr","fullluckrod"],Invulnerable:1b,Invisible:1b}

execute if entity @e[nbt={Inventory:[{Slot:100b,tag:{display:{color:14669862}}},{Slot:101b,tag:{display:{color:14669862}}},{Slot:102b,tag:{display:{color:14669862}}},{Slot:103b,tag:{display:{color:14669862}}}]}] run function mikatanserver:item/rod/luck/summon/2
execute if entity @e[nbt={Inventory:[{Slot:100b,tag:{luck_flag:1b}},{Slot:101b,tag:{luck_flag:1b}},{Slot:102b,tag:{luck_flag:1b}},{Slot:103b,tag:{luck_flag:1b}}]},scores={mana=10..}] run function mikatanserver:item/rod/luck/summon/4

execute as @e[tag=BeforeStoreLuckrodAr] store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0]
execute as @e[tag=BeforeStoreLuckrodAr] run scoreboard players set @s MK.v.VecValue 1
execute as @e[tag=BeforeStoreLuckrodAr] run function mikatanlib:vector/vectorexe
tag @e[tag=BeforeStoreLuckrodAr] remove BeforeStoreLuckrodAr

function mikatanserver:item/rod/luck/move