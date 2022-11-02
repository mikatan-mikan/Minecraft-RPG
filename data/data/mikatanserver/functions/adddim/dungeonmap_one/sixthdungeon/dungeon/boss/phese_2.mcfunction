execute in mikatanserver:dungeon run summon zombie -437.5 115 -166.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:0.5},{Name:"minecraft:generic.armor",Base:15},{Name:"minecraft:generic.max_health",Base:700},{Name:"minecraft:generic.attack_damage",Base:35},{Name:"minecraft:generic.movement_speed",Base:0.5}],Health:700,Tags:["SixthDunBoss","SixDunMob","Spirit_Dun6","Dungeon_Boss"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2137397},Enchantments:[{id:"minecraft:protection",lvl:2s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2137397},Enchantments:[{id:"minecraft:protection",lvl:2s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2137397},Enchantments:[{id:"minecraft:protection",lvl:2s}]}},{id:"minecraft:oak_leaves",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:2s}]}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:5s},{}]}}],HandDropChances:[0.0f,0.0f]}

title @a[tag=DungeonPlay_6] subtitle [{"text": "==記憶は未来へと向かって・・・==","color": "yellow"}]
title @a[tag=DungeonPlay_6] title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"Leaf Spirit of Future","color": "green","bold": true}]

effect give @a[tag=DungeonPlay_6] speed 1000000 8

execute as @a[tag=DungeonPlay_6] at @s run playsound entity.wither.spawn master @a[tag=DungeonPlay_6] ~ ~ ~ 2 1

bossbar remove sixthboss_bar
bossbar add sixthboss_bar "Leaf Spirit of Future"
bossbar set minecraft:sixthboss_bar players @a[tag=DungeonPlay_6]
bossbar set minecraft:sixthboss_bar max 700
bossbar set minecraft:sixthboss_bar color green

execute as @e[tag=SixthDunBoss] at @s as @a[tag=DungeonPlay_6] run tag @s add BossBattle6

execute store result bossbar minecraft:sixthboss_bar value run data get entity @e[tag=SixthDunBoss,limit=1] Health

scoreboard players set @a PheseManeger_6 2
scoreboard players set @a SixBossSkill1 0
scoreboard players set @a SixBossSkill2 0