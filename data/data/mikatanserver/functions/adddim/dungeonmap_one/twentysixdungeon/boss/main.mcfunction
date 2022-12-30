##初期呼び出し
execute in mikatanserver:dungeon run summon zombie 3047.5 47 2046.5 {CustomNameVisible:1,Health:1024,Attributes:[{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.follow_range",Base:20},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:0.9},{Name:"minecraft:generic.attack_damage",Base:20}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:2}}],HandDropChances:[0.0f,0.0f],HandItems:[{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:141}},{}],Tags:["TwentysixDunBoss","TwentysixDunMob","Non_HPBar","Dungeon_Boss"],CustomName:'[{"text": "風の精霊 シルフ","color": "green"}]',Silent:1b,NoAI:1b}

#execute as @e[tag=FourteenDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer26
bossbar add twentysixboss_bar "風の精霊 シルフ"
bossbar set minecraft:twentysixboss_bar players @a[tag=DungeonPlay_26]
bossbar set minecraft:twentysixboss_bar color green

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_26]
scoreboard players operation player TMP *= $1024 int
execute store result bossbar twentysixboss_bar max run scoreboard players get player TMP
execute store result bossbar twentysixboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $26 BossHP run scoreboard players get player TMP
execute store result score $26_max BossHP run scoreboard players get player TMP


# execute as @e[tag=TwentysixDunBoss] store result score @s MobNowHP run data get entity @s Health
# scoreboard objectives remove BossSpawnTimer10
# bossbar add tenthboss_bar "iron blade"
# bossbar set minecraft:tenthboss_bar players @a[tag=DungeonPlay_10]
# bossbar set minecraft:tenthboss_bar max 700
# bossbar set minecraft:tenthboss_bar color blue

#Bossbattletag もバグる
execute as @e[tag=TwentysixDunBoss] at @s as @a[tag=DungeonPlay_26] run tag @s add BossBattle26

execute as @a[tag=DungeonPlay_26] run clear @s #boats

execute as @a[tag=BossBattle26] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:twentysixboss_bar value run data get entity @e[tag=TwentysixDunBoss,limit=1] Health


scoreboard objectives add TwentysixBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add TwentysixBossSkill2 minecraft.custom:minecraft.play_time