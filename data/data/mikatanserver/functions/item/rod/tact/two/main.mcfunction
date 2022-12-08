scoreboard players set $mana TMP 50
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP


scoreboard players set @s MK.r.RandValue 2
function mikatanlib:rand/rand_exe
execute if score @s MK.r.RandValue matches 0 run summon zombie ~ ~2 ~ {Tags:["IceTactMobs","IceZomAllies"],DeathLootTable:"mikatanserver:null",Health:30,Attributes:[{Name:"minecraft:generic.max_health",Base:30},{Name:"minecraft:generic.follow_range",Base:12},{Name:"minecraft:generic.movement_speed",Base:0.45},{Name:"minecraft:generic.attack_damage",Base:5}],CustomName:'[{"text": "frost zombie","color": "aqua"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7729151},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7729151},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7729151},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}},{id:"minecraft:packed_ice",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}}]}
execute if score @s MK.r.RandValue matches 1 run summon zombie ~ ~2 ~ {Tags:["IceTactMobs","IceZomAllies"],DeathLootTable:"mikatanserver:null",Health:30,Attributes:[{Name:"minecraft:generic.max_health",Base:30},{Name:"minecraft:generic.follow_range",Base:12},{Name:"minecraft:generic.movement_speed",Base:0.45},{Name:"minecraft:generic.attack_damage",Base:5}],CustomName:'[{"text": "frost zombie","color": "white"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}},{id:"minecraft:snow_block",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s}]}}]}
execute as @e[tag=IceTactMobs] at @s run summon snowball ~ ~3 ~ {Tags:["Summon_Tact","IceTactMobs","IceZomAllies"],Owner:[],Motion:[0.0,-4.0,0.0]}
execute as @e[tag=IceZomAllies] at @s run tag @e[tag=!IceZomAllies,type=#mikatanserver:mobs,limit=1,sort=nearest,distance=..10] add EnemyMobChecker
data modify entity @e[type=minecraft:snowball,tag=Summon_Tact,limit=1,sort=nearest] Owner set from entity @e[tag=!IceZomAllies,type=#mikatanserver:mobs,limit=1,sort=nearest,distance=..10] UUID
execute as @e[tag=IceTactMobs] run tag @s remove IceTactMobs

schedule function mikatanserver:item/rod/tact/two/kill_s 1t