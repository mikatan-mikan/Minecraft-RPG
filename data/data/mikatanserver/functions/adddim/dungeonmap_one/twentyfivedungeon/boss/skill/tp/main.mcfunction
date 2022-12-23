##-323 134 -16
kill @e[distance=..50,type=boat]
#x座標
scoreboard players set @s MK.r.RandValue 14
function mikatanlib:rand/rand_exe
scoreboard players add @s MK.r.RandValue 2421
execute store result entity @s Pos[0] double 1 run scoreboard players get @s MK.r.RandValue

#y座標
scoreboard players set @s MK.r.RandValue 18
function mikatanlib:rand/rand_exe
scoreboard players remove @s MK.r.RandValue 323
execute store result entity @s Pos[2] double 1 run scoreboard players get @s MK.r.RandValue

data modify entity @s Pos[1] set value 238.0


playsound entity.enderman.teleport master @a[distance=..80] ~ ~ ~ 2 1 1
particle witch ~ ~ ~ 0.4 0.8 0.4 1 50

summon armor_stand ~ ~ ~ {Tags:["25_FrameAr","TwentyfiveDunMob","bef"],Invisible:1b,Invulnerable:1b,NoGravity:1b,NoAI:1b,Small:1b}

execute store result score $block TwentyfiveBossSkill if entity @e[tag=25_EffectAr_Slime]
execute if score $block TwentyfiveBossSkill matches ..3 as @e[tag=25_FrameAr,tag=bef] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/skill/tp/set_breakable_block
tag @e[tag=bef] remove bef
execute as @e[tag=25_FrameAr] at @s run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/skill/tp/particle