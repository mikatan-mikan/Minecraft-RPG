scoreboard players add @s ResultRot_0 40
execute if score @s ResultRot_0 matches 360 run scoreboard players set @s ResultRot_0 0
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s ResultRot_0

summon arrow ^0.5 ^1 ^ {Tags:["EBthroughArrowAr","EBthroughArrowArBe","ElevenDunArmor"]}

playsound entity.arrow.shoot master @a[distance=..80] ~ ~ ~ 2 0 1

execute as @e[tag=EBthroughArrowArBe] at @s unless score @s throughArrowTimer matches 1..120 store result entity @s Rotation[0] float 1 run data get entity @e[tag=EleventhDunBoss,limit=1] Rotation[0] 

execute store result score @s NowDic run data get entity @s Rotation[1]
execute store result entity @e[tag=EBthroughArrowArBe,limit=1] Pose.RightArm[0] float 1 run scoreboard players get @s NowDic

execute as @e[tag = EBthroughArrowArBe] run scoreboard players set @s MK.v.VecValue 2
execute as @e[tag = EBthroughArrowArBe] run function mikatanlib:vector/vectorexe

#item replace entity @e[tag=throughArrowArBe,limit=1] weapon.mainhand with minecraft:iron_sword

tag @e[tag=EBthroughArrowArBe] remove EBthroughArrowArBe


function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/sword/through/move