## 起点：323.0 115 -31.0 90.0 0

tp @a[tag=DungeonPlay_13] 308.0 115 -32.0
title @a[tag=DungeonPlay_13] title {"text": "floor 7 clear !!","color": "green"}


summon enderman 291.0 115 -31.0 {Tags:["ThirteenDunMob","13_dun_eig_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.max_health",Base:20},{Name:"minecraft:generic.attack_damage",Base:15}],Health:60}
summon enderman 285.0 115 -21.0 {Tags:["ThirteenDunMob","13_dun_eig_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.max_health",Base:20},{Name:"minecraft:generic.attack_damage",Base:15}],Health:60}
summon enderman 293.0 115 -19.0 {Tags:["ThirteenDunMob","13_dun_eig_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.max_health",Base:20},{Name:"minecraft:generic.attack_damage",Base:15}],Health:60}
summon enderman 303.0 115 -23.0 {Tags:["ThirteenDunMob","13_dun_eig_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.max_health",Base:20},{Name:"minecraft:generic.attack_damage",Base:15}],Health:60}
summon enderman 285.0 115 -41.0 {Tags:["ThirteenDunMob","13_dun_eig_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.max_health",Base:20},{Name:"minecraft:generic.attack_damage",Base:15}],Health:60}
summon enderman 293.0 115 -43.0 {Tags:["ThirteenDunMob","13_dun_eig_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.max_health",Base:20},{Name:"minecraft:generic.attack_damage",Base:15}],Health:60}
summon enderman 303.0 115 -39.0 {Tags:["ThirteenDunMob","13_dun_eig_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.max_health",Base:20},{Name:"minecraft:generic.attack_damage",Base:15}],Health:60}

scoreboard players set $floor 13_TowerFloor 8
scoreboard players set $mobs 13_TowerNowMobCnt 7
scoreboard players set @a 13_NextMobCheckTimer 0