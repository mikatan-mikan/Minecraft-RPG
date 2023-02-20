execute in mikatanserver:dungeon if score $32_Difficulty Temporary matches 0 run summon slime 1654.5 203 -433.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:5},{Name:"minecraft:generic.movement_speed",Base:0.30},{Name:"minecraft:generic.follow_range",Base:60}],Health:1024,Tags:["ThirtytwoDunBoss","ThirtytwoDunMob","Non_HPBar","Dungeon_Boss"],Silent:1b,CustomName:'[{"text": "Mods Slime","color": "green"}]',Rotation:[-135.0f,0.0f],Size:15,PersistenceRequired:false}

execute in mikatanserver:dungeon if score $32_Difficulty Temporary matches 1 run summon slime 1654.5 203 -433.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:10},{Name:"minecraft:generic.movement_speed",Base:0.38},{Name:"minecraft:generic.follow_range",Base:30}],Health:1024,Tags:["ThirtytwoDunBoss","ThirtytwoDunMob","Non_HPBar","Dungeon_Boss"],Silent:1b,CustomName:'[{"text": "Mods Slime","color": "green"}]',Rotation:[-135.0f,0.0f],Size:17,PersistenceRequired:false}

execute in mikatanserver:dungeon if score $32_Difficulty Temporary matches 2 run summon slime 1654.5 203 -433.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:20},{Name:"minecraft:generic.movement_speed",Base:0.38},{Name:"minecraft:generic.follow_range",Base:15}],Health:1024,Tags:["ThirtytwoDunBoss","ThirtytwoDunMob","Non_HPBar","Dungeon_Boss"],Silent:1b,CustomName:'[{"text": "Mods Slime","color": "green"}]',Rotation:[-135.0f,0.0f],Size:20,PersistenceRequired:false}

execute as @a[tag=DungeonPlay_32] at @s run function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/boss/skill/lightning/light


#execute as @e[tag=TwentyDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer32
bossbar add thirtytwoboss_bar "Dream Eater"
bossbar set minecraft:thirtytwoboss_bar players @a[tag=DungeonPlay_32]
bossbar set minecraft:thirtytwoboss_bar color purple

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_32]
execute if score $32_Difficulty Temporary matches 0 run scoreboard players operation player TMP *= $128 int
execute if score $32_Difficulty Temporary matches 1 run scoreboard players operation player TMP *= $850 int
execute if score $32_Difficulty Temporary matches 2 run scoreboard players operation player TMP *= $1536 int
execute store result bossbar thirtytwoboss_bar max run scoreboard players get player TMP
execute store result bossbar thirtytwoboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $32 BossHP run scoreboard players get player TMP
execute store result score $32_max BossHP run scoreboard players get player TMP

#Bossbattletag もバグる
execute as @e[tag=ThirtytwoDunBoss] at @s as @a[tag=DungeonPlay_32] run tag @s add BossBattle32

execute as @a[tag=BossBattle32] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:thirtytwoboss_bar value run data get entity @e[tag=ThirtytwoDunBoss,limit=1] Health


scoreboard objectives add ThirtytwoBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add ThirtytwoBossSkill2 minecraft.custom:minecraft.play_time