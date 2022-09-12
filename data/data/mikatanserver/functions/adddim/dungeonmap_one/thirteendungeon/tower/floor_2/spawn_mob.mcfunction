## 起点：323.0 40 -31.0 90.0 0

tp @a[tag=DungeonPlay_13] 308.0 40 -32.0
title @a[tag=DungeonPlay_13] title {"text": "floor 1 clear !!","color": "green"}

summon skeleton 279.0 40 -31.0 {Tags:["ThirteenDunMob","13_dun_sec_floor"],HandItems:[{},{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:punch",lvl:3s},{id:"minecraft:power",lvl:4s},{id:"minecraft:flame",lvl:2s}]},Count:1b}],HandDropChances:[0.0f,0.0f]}
summon skeleton 285.0 40 -21.0 {Tags:["ThirteenDunMob","13_dun_sec_floor"],HandItems:[{},{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:punch",lvl:3s},{id:"minecraft:power",lvl:4s},{id:"minecraft:flame",lvl:2s}]},Count:1b}],HandDropChances:[0.0f,0.0f]}
summon skeleton 293.0 40 -19.0 {Tags:["ThirteenDunMob","13_dun_sec_floor"],HandItems:[{},{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:punch",lvl:3s},{id:"minecraft:power",lvl:4s},{id:"minecraft:flame",lvl:2s}]},Count:1b}],HandDropChances:[0.0f,0.0f]}
summon skeleton 303.0 40 -23.0 {Tags:["ThirteenDunMob","13_dun_sec_floor"],HandItems:[{},{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:punch",lvl:3s},{id:"minecraft:power",lvl:4s},{id:"minecraft:flame",lvl:2s}]},Count:1b}],HandDropChances:[0.0f,0.0f]}
summon skeleton 285.0 40 -41.0 {Tags:["ThirteenDunMob","13_dun_sec_floor"],HandItems:[{},{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:punch",lvl:3s},{id:"minecraft:power",lvl:4s},{id:"minecraft:flame",lvl:2s}]},Count:1b}],HandDropChances:[0.0f,0.0f]}
summon skeleton 293.0 40 -43.0 {Tags:["ThirteenDunMob","13_dun_sec_floor"],HandItems:[{},{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:punch",lvl:3s},{id:"minecraft:power",lvl:4s},{id:"minecraft:flame",lvl:2s}]},Count:1b}],HandDropChances:[0.0f,0.0f]}
summon skeleton 303.0 40 -39.0 {Tags:["ThirteenDunMob","13_dun_sec_floor"],HandItems:[{},{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:punch",lvl:3s},{id:"minecraft:power",lvl:4s},{id:"minecraft:flame",lvl:2s}]},Count:1b}],HandDropChances:[0.0f,0.0f]}

scoreboard players set $floor 13_TowerFloor 2
scoreboard players set $mobs 13_TowerNowMobCnt 7
scoreboard players set @a 13_NextMobCheckTimer 0