
scoreboard players add @s ResultRot_0 30
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s ResultRot_0

summon armor_stand ^0.5 ^ ^ {Tags:["season2BthroughSwordAr","season2BthroughSwordArBe","season2DunArmor","season2DunMob"],Invisible:1b,Invulnerable:1b,HandItems:[{id:"minecraft:iron_sword",Count:1b}],ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},DisabledSlots:4144959}

playsound entity.snowball.throw master @a[distance=..80] ~ ~ ~ 2 0 1

execute as @e[tag=season2BthroughSwordArBe] at @s store result entity @s Rotation[0] float 1 run data get entity @e[tag=season2DunBoss,limit=1] Rotation[0] 

execute store result score @s NowDic run data get entity @s Rotation[1]
execute store result entity @e[tag=season2BthroughSwordArBe,limit=1] Pose.RightArm[0] float 1 run scoreboard players get @s NowDic

#item replace entity @e[tag=throughSwordArBe,limit=1] weapon.mainhand with minecraft:iron_sword

tag @e[tag=season2BthroughSwordArBe] remove season2BthroughSwordArBe


function mikatanserver:adddim/dungeon_season/season2dungeon/6/skill/sword/through/move