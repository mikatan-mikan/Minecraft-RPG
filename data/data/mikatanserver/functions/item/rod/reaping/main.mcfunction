scoreboard players remove @s mana 40

#二重
execute as @a at @s as @e[tag=ReapingAr,distance=..2] run kill @s

summon armor_stand ~ ~0.1 ~ {Invisible:1b,Invulnerable:1b,Small:1b,Tags:["ReapingAr"]}
tag @e[tag=ReapingAr,distance=..1,limit=1] add ReapingArMoC
execute store result entity @e[tag=ReapingArMoC,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=ReapingArMoC,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
scoreboard players set @e[tag=ReapingArMoC] MK.v.VecValue 1
execute as @e[tag=ReapingArMoC] run function mikatanlib:vector/vectorexe
tag @e[tag=ReapingArMoC] remove ReapingArMoC
tag @s add ReapingTimeS
scoreboard objectives add ReapingTimer minecraft.custom:minecraft.play_time
schedule function mikatanserver:item/rod/reaping/teleport 3t

playsound minecraft:entity.ender_dragon.shoot master @a[distance=..10] ~ ~ ~ 0.6 2

