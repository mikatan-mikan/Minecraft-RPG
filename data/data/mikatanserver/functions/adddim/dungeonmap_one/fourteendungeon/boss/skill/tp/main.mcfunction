##-323 134 -16
kill @e[distance=..50,type=boat]
#x座標
scoreboard players set @s MK.r.RandValue 30
function mikatanlib:rand/rand_exe
scoreboard players remove @s MK.r.RandValue 28
execute store result entity @s Pos[0] double 1 run scoreboard players get @s MK.r.RandValue

#y座標
scoreboard players set @s MK.r.RandValue 30
function mikatanlib:rand/rand_exe
scoreboard players remove @s MK.r.RandValue 157
execute store result entity @s Pos[2] double 1 run scoreboard players get @s MK.r.RandValue


playsound entity.enderman.teleport master @a[distance=..80] ~ ~ ~ 2 1 1
particle witch ~ ~ ~ 0.4 0.8 0.4 1 50

summon armor_stand ~ ~ ~ {Tags:["14_FrameAr","FourteenDunMob"],Invisible:1b,Invulnerable:1b,NoGravity:1b,NoAI:1b,Small:1b}

execute as @e[tag=14_FrameAr] at @s run function mikatanserver:adddim/dungeonmap_one/fourteendungeon/boss/skill/tp/particle