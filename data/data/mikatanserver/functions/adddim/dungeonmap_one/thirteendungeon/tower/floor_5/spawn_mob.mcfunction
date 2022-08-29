## 起点：323.0 79 -31.0 90.0 0

tp @a[tag=DungeonPlay_13] 308.0 79 -32.0
title @a[tag=DungeonPlay_13] title {"text": "floor 4 clear !!","color": "green"}


summon guardian 279.0 79 -31.0 {Tags:["ThirteenDunMob","13_dun_fif_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3},{Name:"minecraft:generic.max_health",Base:40},{Name:"minecraft:generic.attack_damage",Base:30},{Name:"minecraft:generic.follow_range",Base:30}],Health:40}
summon guardian 285.0 79 -21.0 {Tags:["ThirteenDunMob","13_dun_fif_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3},{Name:"minecraft:generic.max_health",Base:40},{Name:"minecraft:generic.attack_damage",Base:30},{Name:"minecraft:generic.follow_range",Base:30}],Health:40}
summon guardian 293.0 79 -19.0 {Tags:["ThirteenDunMob","13_dun_fif_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3},{Name:"minecraft:generic.max_health",Base:40},{Name:"minecraft:generic.attack_damage",Base:30},{Name:"minecraft:generic.follow_range",Base:30}],Health:40}
summon guardian 303.0 79 -23.0 {Tags:["ThirteenDunMob","13_dun_fif_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3},{Name:"minecraft:generic.max_health",Base:40},{Name:"minecraft:generic.attack_damage",Base:30},{Name:"minecraft:generic.follow_range",Base:30}],Health:40}
summon guardian 285.0 79 -41.0 {Tags:["ThirteenDunMob","13_dun_fif_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3},{Name:"minecraft:generic.max_health",Base:40},{Name:"minecraft:generic.attack_damage",Base:30},{Name:"minecraft:generic.follow_range",Base:30}],Health:40}
summon guardian 293.0 79 -43.0 {Tags:["ThirteenDunMob","13_dun_fif_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3},{Name:"minecraft:generic.max_health",Base:40},{Name:"minecraft:generic.attack_damage",Base:30},{Name:"minecraft:generic.follow_range",Base:30}],Health:40}
summon guardian 303.0 79 -39.0 {Tags:["ThirteenDunMob","13_dun_fif_floor"],Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.3},{Name:"minecraft:generic.max_health",Base:40},{Name:"minecraft:generic.attack_damage",Base:30},{Name:"minecraft:generic.follow_range",Base:30}],Health:40}

scoreboard players set $floor 13_TowerFloor 5
scoreboard players set $mobs 13_TowerNowMobCnt 7
scoreboard players set @a 13_NextMobCheckTimer 0