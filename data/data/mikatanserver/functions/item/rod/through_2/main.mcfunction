scoreboard players remove @s mana 45

tag @s add throughSwordExecute_2

summon armor_stand ^0.5 ^ ^ {Tags:["throughSwordAr_2","throughSwordArBe_2"],Invisible:1b,Invulnerable:1b,HandItems:[{id:"minecraft:iron_sword",Count:1b}],ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},DisabledSlots:4144959}

playsound entity.snowball.throw master @s ~ ~ ~ 1 0

execute as @e[tag=throughSwordArBe_2] at @s unless score @s throughSwordTimer matches 1..40 store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0] 
execute as @e[tag=throughSwordArBe_2] at @s unless score @s throughSwordTimer matches 1..40 store result entity @s Rotation[1] float 1 run data get entity @p Rotation[1] 

execute store result score @s NowDic run data get entity @s Rotation[1]
execute store result entity @e[tag=throughSwordArBe_2,limit=1] Pose.RightArm[0] float 1 run scoreboard players get @s NowDic

#item replace entity @e[tag=throughSwordArBe,limit=1] weapon.mainhand with minecraft:iron_sword

tag @e[tag=throughSwordArBe_2] remove throughSwordArBe_2


function mikatanserver:item/rod/through_2/move