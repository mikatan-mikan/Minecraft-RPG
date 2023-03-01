execute in mikatanserver:dungeon if score $36_Difficulty Temporary matches 0 run summon iron_golem 1383.5 252 -1809.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:5},{Name:"minecraft:generic.movement_speed",Base:0.30},{Name:"minecraft:generic.follow_range",Base:60}],Health:1024,Tags:["ThirtysixDunBoss","ThirtysixDunMob","Non_HPBar","Dungeon_Boss"],Silent:1b,CustomName:'[{"text": "Mods Golem","color": "gray"}]',Rotation:[45.0f,0.0f],PersistenceRequired:true}

execute in mikatanserver:dungeon if score $36_Difficulty Temporary matches 1 run summon iron_golem 1383.5 252 -1809.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:10},{Name:"minecraft:generic.movement_speed",Base:0.38},{Name:"minecraft:generic.follow_range",Base:30}],Health:1024,Tags:["ThirtysixDunBoss","ThirtysixDunMob","Non_HPBar","Dungeon_Boss"],Silent:1b,CustomName:'[{"text": "Mods Golem","color": "gray"}]',Rotation:[45.0f,0.0f],PersistenceRequired:true}

execute in mikatanserver:dungeon if score $36_Difficulty Temporary matches 2 run summon iron_golem 1383.5 252 -1809.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:20},{Name:"minecraft:generic.movement_speed",Base:0.38},{Name:"minecraft:generic.follow_range",Base:15}],Health:1024,Tags:["ThirtysixDunBoss","ThirtysixDunMob","Non_HPBar","Dungeon_Boss"],Silent:1b,CustomName:'[{"text": "Mods Golem","color": "gray"}]',Rotation:[45.0f,0.0f],PersistenceRequired:true}



#execute as @e[tag=TwentyDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer36
bossbar add thirtysixboss_bar "Mods Golem"
bossbar set minecraft:thirtysixboss_bar players @a[tag=DungeonPlay_36]
bossbar set minecraft:thirtysixboss_bar color white

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_36]
execute if score $36_Difficulty Temporary matches 0 run scoreboard players operation player TMP *= $128 int
execute if score $36_Difficulty Temporary matches 1 run scoreboard players operation player TMP *= $850 int
execute if score $36_Difficulty Temporary matches 2 run scoreboard players operation player TMP *= $1536 int
execute store result bossbar thirtysixboss_bar max run scoreboard players get player TMP
execute store result bossbar thirtysixboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $36 BossHP run scoreboard players get player TMP
execute store result score $36_max BossHP run scoreboard players get player TMP

#Bossbattletag もバグる
execute as @e[tag=ThirtysixDunBoss] at @s as @a[tag=DungeonPlay_36] run tag @s add BossBattle36

execute as @a[tag=BossBattle36] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:thirtysixboss_bar value run data get entity @e[tag=ThirtysixDunBoss,limit=1] Health


scoreboard objectives add ThirtysixBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add ThirtysixBossSkill2 minecraft.custom:minecraft.play_time