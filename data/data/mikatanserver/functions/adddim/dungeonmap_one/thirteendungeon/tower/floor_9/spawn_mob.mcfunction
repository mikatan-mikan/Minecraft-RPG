## 起点：323.0 115 -31.0 90.0 0

tp @a[tag=DungeonPlay_13] 308.0 115 -32.0
title @a[tag=DungeonPlay_13] title {"text": "floor 8 clear !!","color": "green"}


summon creeper 291.0 115 -31.0 {Tags:["ThirteenDunMob","13_dun_eig_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.max_health",Base:40}],Health:40,powered:1b}
summon creeper 285.0 115 -21.0 {Tags:["ThirteenDunMob","13_dun_eig_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.max_health",Base:40}],Health:40,powered:1b}
summon creeper 293.0 115 -19.0 {Tags:["ThirteenDunMob","13_dun_eig_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.max_health",Base:40}],Health:40,powered:1b}
summon creeper 303.0 115 -23.0 {Tags:["ThirteenDunMob","13_dun_eig_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.max_health",Base:40}],Health:40,powered:1b}
summon creeper 285.0 115 -41.0 {Tags:["ThirteenDunMob","13_dun_eig_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.max_health",Base:40}],Health:40,powered:1b}
summon creeper 293.0 115 -43.0 {Tags:["ThirteenDunMob","13_dun_eig_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.max_health",Base:40}],Health:40,powered:1b}
summon creeper 303.0 115 -39.0 {Tags:["ThirteenDunMob","13_dun_eig_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.max_health",Base:40}],Health:40,powered:1b}

scoreboard players set $floor 13_TowerFloor 9
scoreboard players set $mobs 13_TowerNowMobCnt 7
scoreboard players set @a 13_NextMobCheckTimer 0