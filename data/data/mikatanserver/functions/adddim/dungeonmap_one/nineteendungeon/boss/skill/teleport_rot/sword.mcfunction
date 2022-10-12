
scoreboard players add @s ResultRot_0 10
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s ResultRot_0

summon armor_stand ^0.5 ^ ^ {Tags:["NineteenDunSwAr","NineteenDunMob","NineteenDunArTpBef","NineteenDunArmor","NineteenDunSwArInca"],Invisible:1b,Invulnerable:1b,HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:7}}],ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},DisabledSlots:4144959}

playsound entity.snowball.throw master @a[distance=..80] ~ ~ ~ 2 0 1

execute as @e[tag=NineteenDunArTpBef] at @s store result entity @s Rotation[0] float 1 run scoreboard players get @e[tag=NineteenDunBoss,limit=1] ResultRot_0 
# data get entity @e[tag=NineteenthDunBoss,limit=1] Rotation[0] 

execute store result score @s NowDic run data get entity @s Rotation[1]
execute store result entity @e[tag=NineteenDunArTpBef,limit=1] Pose.RightArm[0] float 1 run scoreboard players get @s NowDic

#item replace entity @e[tag=throughSwordArBe,limit=1] weapon.mainhand with minecraft:iron_sword

tag @e[tag=NineteenDunArTpBef] remove NineteenDunArTpBef