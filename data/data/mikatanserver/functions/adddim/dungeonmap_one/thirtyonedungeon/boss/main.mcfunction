summon magma_cube 1022.5 58 1485.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:1},{Name:"minecraft:generic.movement_speed",Base:0.30},{Name:"minecraft:generic.follow_range",Base:60}],Health:400,Tags:["ThirtyoneDunBoss","ThirtyoneDunMob"],Silent:1b,CustomName:'[{"text": "マグマキューブ","color": "white"}]',Size:10}
summon magma_cube 1022.5 58 1485.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:1},{Name:"minecraft:generic.movement_speed",Base:0.30},{Name:"minecraft:generic.follow_range",Base:60}],Health:400,Tags:["ThirtyoneDunBoss","ThirtyoneDunMob"],Silent:1b,CustomName:'[{"text": "マグマキューブ","color": "white"}]',Size:10}
summon magma_cube 1022.5 58 1485.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:1},{Name:"minecraft:generic.movement_speed",Base:0.30},{Name:"minecraft:generic.follow_range",Base:60}],Health:400,Tags:["ThirtyoneDunBoss","ThirtyoneDunMob"],Silent:1b,CustomName:'[{"text": "マグマキューブ","color": "white"}]',Size:10}
summon magma_cube 1022.5 58 1485.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:1},{Name:"minecraft:generic.movement_speed",Base:0.30},{Name:"minecraft:generic.follow_range",Base:60}],Health:400,Tags:["ThirtyoneDunBoss","ThirtyoneDunMob"],Silent:1b,CustomName:'[{"text": "マグマキューブ","color": "white"}]',Size:10}

# #execute as @e[tag=TwentyDunBoss] store result score @s MobNowHP run data get entity @s Health
# scoreboard objectives remove BossSpawnTimer31
# bossbar add thirtyoneboss_bar "マグマキューブ"
# bossbar set minecraft:thirtyoneboss_bar players @a[tag=DungeonPlay_31]
# bossbar set minecraft:thirtyoneboss_bar color red

# ## 人数を取得 & 値の決定
# execute store result score player TMP if entity @a[tag = DungeonPlay_31]
# scoreboard players operation player TMP *= $100 int
# execute store result bossbar thirtyoneboss_bar max run scoreboard players get player TMP
# execute store result bossbar thirtyoneboss_bar value run scoreboard players get player TMP
# #execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
# ## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
# execute store result score $31 BossHP run scoreboard players get player TMP
# execute store result score $31_max BossHP run scoreboard players get player TMP

#Bossbattletag もバグる
execute as @e[tag=ThirtyoneDunBoss] at @s as @a[tag=DungeonPlay_31] run tag @s add BossBattle31

execute as @a[tag=BossBattle31] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

# execute store result bossbar minecraft:thirtyoneboss_bar value run data get entity @e[tag=ThirtyoneDunBoss,limit=1] Health