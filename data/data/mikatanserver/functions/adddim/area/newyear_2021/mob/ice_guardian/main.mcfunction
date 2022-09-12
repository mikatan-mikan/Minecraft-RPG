execute in mikatanserver:dungeon run summon zombie -328 135 -345 {Tags:["ice_Guardian","not_Pos"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.4},{Name:"minecraft:generic.max_health",Base:40},{Name:"minecraft:generic.attack_damage",Base:15},{Name:"minecraft:generic.follow_range",Base:30}],Health:40,DeathLootTable:"mikatanserver:area/new-year/loot_1",HandDropChances:[0.0f,0.0f],HandItems:[{},{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:10,AttributeModifiers:[{AttributeName:"minecraft:generic.attack_damage",Amount:30d}]}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7729151},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7729151},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7729151},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:packed_ice",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s}]}}]}



scoreboard players set @e[tag=not_Pos] MK.r.RandValue 100
execute as @e[tag=not_Pos] at @s run function mikatanlib:rand/rand_exe

scoreboard players remove @e[tag=not_Pos] MK.r.RandValue 412

execute as @e[tag=not_Pos] store result entity @s Pos[0] double 1 run scoreboard players get @s MK.r.RandValue

scoreboard players set @e[tag=not_Pos] MK.r.RandValue 100
execute as @e[tag=not_Pos] at @s run function mikatanlib:rand/rand_exe

scoreboard players remove @e[tag=not_Pos] MK.r.RandValue 412

execute as @e[tag=not_Pos] store result entity @s Pos[2] double 1 run scoreboard players get @s MK.r.RandValue

execute as @e[tag=not_Pos] run data modify entity @s Pos[1] merge value 135

tag @e[tag=not_Pos] remove not_Pos





##周りにプレイヤーがいないモブをtpし直し
execute as @e[tag=ice_Guardian] at @s run function mikatanserver:adddim/area/newyear_2021/mob/ice_guardian/tpmain