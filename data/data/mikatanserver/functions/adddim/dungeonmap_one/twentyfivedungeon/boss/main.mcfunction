##初期呼び出し
execute in mikatanserver:dungeon run summon zombie 2421.5 238 -309.5 {CustomNameVisible:1,Glowing:1,Health:1200,Attributes:[{Name:"minecraft:generic.max_health",Base:1200},{Name:"minecraft:generic.follow_range",Base:15},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:0.45d},{Name:"minecraft:generic.attack_damage",Base:25}],Tags:["TwentyfiveDunBoss","TwentyfiveDunMob","Non_HPBar","Dungeon_Boss"],Rotation:[-138.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16514858},Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:feather_falling",lvl:10s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16514858},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16514858},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;940639223,-441497331,-1996031708,1106182684],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDU5NGVkNDY3YjZiM2ZjODlkZTE3OTZlYzJiMjM3NGI5MjAwNmUzZTMwMTY2YzMxMDc0ODdjNmE3YTMzNTg0NSJ9fX0="}]}},Enchantments:[{id:"minecraft:protection",lvl:4}]}}],CustomName:'[{"text": "聖杯を奪いし者","color": "yellow"}]',Silent:1b}

#execute as @e[tag=TwentyfiveDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer25
bossbar add twentyfiveboss_bar {"text":"聖杯を奪いし者","color": "yellow"}
bossbar set minecraft:twentyfiveboss_bar players @a[tag=DungeonPlay_25]
bossbar set minecraft:twentyfiveboss_bar color purple

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_25]
scoreboard players operation player TMP *= $512 int
execute store result bossbar twentyfiveboss_bar max run scoreboard players get player TMP
execute store result bossbar twentyfiveboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=TwentyfiveDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $25 BossHP run scoreboard players get player TMP
execute store result score $25_max BossHP run scoreboard players get player TMP

#Bossbattletag もバグる
execute as @e[tag=TwentyfiveDunBoss] at @s as @a[tag=DungeonPlay_25] run tag @s add BossBattle25

execute as @a[tag=DungeonPlay_25] run clear @s #boats

execute as @a[tag=BossBattle25] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:twentyfiveboss_bar value run data get entity @e[tag=TwentyfiveDunBoss,limit=1] Health


scoreboard objectives add TwentyfiveBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add TwentyfiveBossSkill2 minecraft.custom:minecraft.play_time