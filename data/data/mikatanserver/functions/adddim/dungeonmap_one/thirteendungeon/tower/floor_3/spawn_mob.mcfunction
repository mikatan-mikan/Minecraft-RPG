## 起点：323.0 54 -31.0 90.0 0

tp @a[tag=DungeonPlay_13] 308.0 54 -32.0
title @a[tag=DungeonPlay_13] title {"text": "floor 2 clear !!","color": "green"}

summon zombie 279.0 54 -31.0 {Tags:["ThirteenDunMob","13_dun_thi_floor"],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16747810},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16747810},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16747810},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:carved_pumpkin",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}],Attributes:[{Name:"minecraft:generic.attack_damage",Base:25}]}
summon zombie 285.0 54 -21.0 {Tags:["ThirteenDunMob","13_dun_thi_floor"],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2752290},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2752290},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2752290},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:melon",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}],Attributes:[{Name:"minecraft:generic.attack_damage",Base:25}]}
summon zombie 293.0 54 -19.0 {Tags:["ThirteenDunMob","13_dun_thi_floor"],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16747810},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16747810},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16747810},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:carved_pumpkin",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}],Attributes:[{Name:"minecraft:generic.attack_damage",Base:25}]}
summon zombie 303.0 54 -23.0 {Tags:["ThirteenDunMob","13_dun_thi_floor"],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2752290},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2752290},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2752290},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:melon",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}],Attributes:[{Name:"minecraft:generic.attack_damage",Base:25}]}
summon zombie 285.0 54 -41.0 {Tags:["ThirteenDunMob","13_dun_thi_floor"],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2752290},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2752290},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2752290},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:melon",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}],Attributes:[{Name:"minecraft:generic.attack_damage",Base:25}]}
summon zombie 293.0 54 -43.0 {Tags:["ThirteenDunMob","13_dun_thi_floor"],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16747810},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16747810},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16747810},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:carved_pumpkin",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}],Attributes:[{Name:"minecraft:generic.attack_damage",Base:25}]}
summon zombie 303.0 54 -39.0 {Tags:["ThirteenDunMob","13_dun_thi_floor"],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2752290},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2752290},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2752290},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:melon",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}],Attributes:[{Name:"minecraft:generic.attack_damage",Base:25}]}

scoreboard players set $floor 13_TowerFloor 3
scoreboard players set $mobs 13_TowerNowMobCnt 7
scoreboard players set @a 13_NextMobCheckTimer 0