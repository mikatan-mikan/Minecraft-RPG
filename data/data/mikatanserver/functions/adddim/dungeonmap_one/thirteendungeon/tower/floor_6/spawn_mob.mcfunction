## 起点：323.0 91 -31.0 90.0 0

tp @a[tag=DungeonPlay_13] 308.0 91 -32.0
title @a[tag=DungeonPlay_13] title {"text": "floor 5 clear !!","color": "green"}


summon piglin_brute 291.0 91 -31.0 {Tags:["ThirteenDunMob","13_dun_six_floor"],Attributes:[{Name:"minecraft:generic.max_health",Base:150},{Name:"minecraft:generic.attack_damage",Base:30},{Name:"minecraft:generic.follow_range",Base:30}],Health:150,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{Count:1b,id:"minecraft:golden_boots",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:golden_leggings",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}],TimeInOverworld:-2000000000}
summon piglin 285.0 91 -21.0 {Tags:["ThirteenDunMob","13_dun_six_floor"],Attributes:[{Name:"minecraft:generic.max_health",Base:150},{Name:"minecraft:generic.attack_damage",Base:25},{Name:"minecraft:generic.follow_range",Base:30}],Health:40,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{Count:1b,id:"minecraft:golden_boots",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:golden_leggings",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}],TimeInOverworld:-2000000000}
summon piglin 293.0 91 -19.0 {Tags:["ThirteenDunMob","13_dun_six_floor"],Attributes:[{Name:"minecraft:generic.max_health",Base:150},{Name:"minecraft:generic.attack_damage",Base:25},{Name:"minecraft:generic.follow_range",Base:30}],Health:40,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{Count:1b,id:"minecraft:golden_boots",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:golden_leggings",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}],TimeInOverworld:-2000000000}
summon piglin 303.0 91 -23.0 {Tags:["ThirteenDunMob","13_dun_six_floor"],Attributes:[{Name:"minecraft:generic.max_health",Base:150},{Name:"minecraft:generic.attack_damage",Base:25},{Name:"minecraft:generic.follow_range",Base:30}],Health:40,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{Count:1b,id:"minecraft:golden_boots",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:golden_leggings",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}],TimeInOverworld:-2000000000}
summon piglin 285.0 91 -41.0 {Tags:["ThirteenDunMob","13_dun_six_floor"],Attributes:[{Name:"minecraft:generic.max_health",Base:150},{Name:"minecraft:generic.attack_damage",Base:25},{Name:"minecraft:generic.follow_range",Base:30}],Health:40,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{Count:1b,id:"minecraft:golden_boots",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:golden_leggings",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}],TimeInOverworld:-2000000000}
summon piglin 293.0 91 -43.0 {Tags:["ThirteenDunMob","13_dun_six_floor"],Attributes:[{Name:"minecraft:generic.max_health",Base:150},{Name:"minecraft:generic.attack_damage",Base:25},{Name:"minecraft:generic.follow_range",Base:30}],Health:40,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{Count:1b,id:"minecraft:golden_boots",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:golden_leggings",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}],TimeInOverworld:-2000000000}
summon piglin 303.0 91 -39.0 {Tags:["ThirteenDunMob","13_dun_six_floor"],Attributes:[{Name:"minecraft:generic.max_health",Base:150},{Name:"minecraft:generic.attack_damage",Base:25},{Name:"minecraft:generic.follow_range",Base:30}],Health:40,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{Count:1b,id:"minecraft:golden_boots",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:golden_leggings",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}],TimeInOverworld:-2000000000}

scoreboard players set $floor 13_TowerFloor 6
scoreboard players set $mobs 13_TowerNowMobCnt 7
scoreboard players set @a 13_NextMobCheckTimer 0