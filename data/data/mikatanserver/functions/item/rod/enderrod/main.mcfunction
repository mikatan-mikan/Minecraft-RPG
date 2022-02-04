scoreboard players remove @s mana 55

##pearl召喚
summon ender_pearl ^ ^1 ^1 {Tags:["beforeRot"],Glowing:true,NoGravity:0}

execute store result entity @e[tag=beforeRot,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=beforeRot,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]

data modify entity @e[type=minecraft:ender_pearl,tag=beforeRot,limit=1,sort=nearest] Owner set from entity @s UUID

execute as @e[tag=beforeRot] run scoreboard players set @s MK.v.VecValue 2
execute as @e[tag=beforeRot] run function mikatanlib:vector/vectorexe

execute as @e[tag=beforeRot] run tag @s remove beforeRot