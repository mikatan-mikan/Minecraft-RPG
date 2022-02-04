scoreboard players remove @s mana 27

##fireball本体の召喚
summon armor_stand ~ ~ ~ {Tags:["FireBallArmor","beforeRot"],Invisible:1b,Invulnerable:1b,Small:1b}

##rotation
execute store result entity @e[tag=beforeRot,sort=nearest,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=beforeRot,sort=nearest,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
scoreboard players set @e[tag=beforeRot] MK.v.VecValue 3
execute as @e[tag=beforeRot] run function mikatanlib:vector/vectorexe
tag @e[tag=beforeRot] remove beforeRot

schedule function mikatanserver:item/rod/fireball/damage 1t