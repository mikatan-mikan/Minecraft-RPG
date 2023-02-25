##初期呼び出し
execute in mikatanserver:dungeon run summon drowned -1980.0 0.0 470.0 {CustomNameVisible:1,Health:1024,Attributes:[{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.follow_range",Base:20},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:0.9},{Name:"minecraft:generic.attack_damage",Base:20}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:7}}],HandDropChances:[0.0f,0.0f],HandItems:[{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:179}},{}],Tags:["ThirtyfourDunBoss","ThirtyfourDunMob","Non_HPBar","Dungeon_Boss"],CustomName:'[{"text": "水の精霊 ウィンディーネ","color": "blue"}]',Silent:1b,NoGravity:1b,Rotation:[180.0f,0.0f],DrownedConversionTime:-1,NoAI:1b}

#execute as @e[tag=FourteenDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer34
bossbar add thirtyfourboss_bar "水の精霊 ウィンディーネ"
bossbar set minecraft:thirtyfourboss_bar players @a[tag=DungeonPlay_34]
bossbar set minecraft:thirtyfourboss_bar color blue

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_34]
scoreboard players operation player TMP *= $1024 int
execute store result bossbar thirtyfourboss_bar max run scoreboard players get player TMP
execute store result bossbar thirtyfourboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $34 BossHP run scoreboard players get player TMP
execute store result score $34_max BossHP run scoreboard players get player TMP


# execute as @e[tag=ThirtyfourDunBoss] store result score @s MobNowHP run data get entity @s Health
# scoreboard objectives remove BossSpawnTimer10
# bossbar add tenthboss_bar "iron blade"
# bossbar set minecraft:tenthboss_bar players @a[tag=DungeonPlay_10]
# bossbar set minecraft:tenthboss_bar max 700
# bossbar set minecraft:tenthboss_bar color blue

#Bossbattletag もバグる
execute as @e[tag=ThirtyfourDunBoss] at @s as @a[tag=DungeonPlay_34] run tag @s add BossBattle34

execute as @a[tag=DungeonPlay_34] run clear @s #boats

execute as @a[tag=BossBattle34] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:thirtyfourboss_bar value run data get entity @e[tag=ThirtyfourDunBoss,limit=1] Health


scoreboard objectives add ThirtyfourBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add ThirtyfourBossSkill2 minecraft.custom:minecraft.play_time