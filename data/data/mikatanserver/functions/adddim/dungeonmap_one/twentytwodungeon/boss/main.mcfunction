##初期呼び出し
execute in mikatanserver:dungeon run summon iron_golem -143.5 100 -245.5 {CustomNameVisible:1,Glowing:1,Health:1024,Attributes:[{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.follow_range",Base:20},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:0.9},{Name:"minecraft:generic.attack_damage",Base:20}],Tags:["TwentytwoDunBoss","TwentytwoDunMob","Non_HPBar","Dungeon_Boss"]}

#execute as @e[tag=FourteenDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer22
bossbar add twentytwoboss_bar "iron blade"
bossbar set minecraft:twentytwoboss_bar players @a[tag=DungeonPlay_22]
bossbar set minecraft:twentytwoboss_bar color purple

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_22]
scoreboard players operation player TMP *= $300 int
execute store result bossbar twentytwoboss_bar max run scoreboard players get player TMP
execute store result bossbar twentytwoboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $22 BossHP run scoreboard players get player TMP
execute store result score $22_max BossHP run scoreboard players get player TMP


# execute as @e[tag=TwentytwoDunBoss] store result score @s MobNowHP run data get entity @s Health
# scoreboard objectives remove BossSpawnTimer10
# bossbar add tenthboss_bar "iron blade"
# bossbar set minecraft:tenthboss_bar players @a[tag=DungeonPlay_10]
# bossbar set minecraft:tenthboss_bar max 700
# bossbar set minecraft:tenthboss_bar color blue

#Bossbattletag もバグる
execute as @e[tag=TwentytwoDunBoss] at @s as @a[tag=DungeonPlay_22] run tag @s add BossBattle22

execute as @a[tag=DungeonPlay_22] run clear @s #boats

execute as @a[tag=BossBattle22] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:twentytwoboss_bar value run data get entity @e[tag=TwentytwoDunBoss,limit=1] Health


scoreboard objectives add TwentytwoBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add TwentytwoBossSkill2 minecraft.custom:minecraft.play_time
# function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/boss/main