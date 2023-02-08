##初期呼び出し
execute in mikatanserver:dungeon run summon zombie -679.5 99 1119.5 {CustomNameVisible:1,Health:1024,Attributes:[{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.follow_range",Base:20},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:0.9},{Name:"minecraft:generic.attack_damage",Base:20}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:4}}],HandDropChances:[0.0f,0.0f],HandItems:[{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:163}},{}],Tags:["ThirtyDunBoss","ThirtyDunMob","Non_HPBar","Dungeon_Boss"],CustomName:'[{"text": "炎の精霊 サラマンダー","color": "red"}]',Silent:1b,NoGravity:1b,Rotation:[180.0f,0.0f]}

#execute as @e[tag=FourteenDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer30
bossbar add thirtyboss_bar "炎の精霊 サラマンダー"
bossbar set minecraft:thirtyboss_bar players @a[tag=DungeonPlay_30]
bossbar set minecraft:thirtyboss_bar color red

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_30]
scoreboard players operation player TMP *= $1024 int
execute store result bossbar thirtyboss_bar max run scoreboard players get player TMP
execute store result bossbar thirtyboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $30 BossHP run scoreboard players get player TMP
execute store result score $30_max BossHP run scoreboard players get player TMP


# execute as @e[tag=ThirtyDunBoss] store result score @s MobNowHP run data get entity @s Health
# scoreboard objectives remove BossSpawnTimer10
# bossbar add tenthboss_bar "iron blade"
# bossbar set minecraft:tenthboss_bar players @a[tag=DungeonPlay_10]
# bossbar set minecraft:tenthboss_bar max 700
# bossbar set minecraft:tenthboss_bar color blue

#Bossbattletag もバグる
execute as @e[tag=ThirtyDunBoss] at @s as @a[tag=DungeonPlay_30] run tag @s add BossBattle30

execute as @a[tag=DungeonPlay_30] run clear @s #boats

execute as @a[tag=BossBattle30] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:thirtyboss_bar value run data get entity @e[tag=ThirtyDunBoss,limit=1] Health


scoreboard objectives add ThirtyBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add ThirtyBossSkill2 minecraft.custom:minecraft.play_time