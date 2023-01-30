summon zombie 1031.5 119 661.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:1},{Name:"minecraft:generic.movement_speed",Base:0.30},{Name:"minecraft:generic.follow_range",Base:60}],Health:1024,Tags:["TwentynineDunBoss","TwentynineDunMob","Non_HPBar","Dungeon_Boss"],Silent:1b,HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;977594933,-1992604693,-2088865105,1698361262],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2E0MjNhYTUzOWE2NjMzNjUyMzJlNDY1ZWE3NDdiNDU2Y2RmMzJhMDIyN2VjZDcwOTlkNDg1YzJkZDhhMzUwOCJ9fX0="}]}}}}],CustomName:'[{"text": "白刃","color": "white"}]'}

#execute as @e[tag=TwentyDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer29
bossbar add twentynineboss_bar "白刃"
bossbar set minecraft:twentynineboss_bar players @a[tag=DungeonPlay_29]
bossbar set minecraft:twentynineboss_bar color purple

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_29]
scoreboard players operation player TMP *= $100 int
execute store result bossbar twentynineboss_bar max run scoreboard players get player TMP
execute store result bossbar twentynineboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $29 BossHP run scoreboard players get player TMP
execute store result score $29_max BossHP run scoreboard players get player TMP

#Bossbattletag もバグる
execute as @e[tag=TwentynineDunBoss] at @s as @a[tag=DungeonPlay_29] run tag @s add BossBattle29

execute as @a[tag=BossBattle29] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:twentynineboss_bar value run data get entity @e[tag=TwentynineDunBoss,limit=1] Health


scoreboard objectives add TwentynineBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add TwentynineBossSkill2 minecraft.custom:minecraft.play_time