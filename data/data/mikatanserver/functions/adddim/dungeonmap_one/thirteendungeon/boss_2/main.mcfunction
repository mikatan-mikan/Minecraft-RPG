## function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss/main
##初期呼び出し
execute in mikatanserver:dungeon run summon zombie 292.5 209 -31.5 {CustomNameVisible:1,Glowing:1,Health:1024,Attributes:[{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.follow_range",Base:30},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:0.5d},{Name:"minecraft:generic.attack_damage",Base:18}],Tags:["ThirteenDunBoss","ThirteenDunMob","ThirteenDunBoss_2","Non_HPBar","Dungeon_Boss"],Rotation:[-90.0f,0.0f],PersistenceRequired:1,CustomName:'[{"text":"神子","color": "yellow"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}],display:{color:16718619}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}],display:{color:16718619}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}],display:{color:16718619}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;449009448,-1853471127,-1234613827,-683900578],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2RkNGQ3ZDM4NTcxODRhN2Y5ZTYxZmFiMDc2YzAxY2I4YWRlMjZkOWE4MjQ5ODI5NTJkMGUwYzNiYmY0MjBjZiJ9fX0="}]}}}}]}

execute in mikatanserver:dungeon as @a[tag=BossBattle13] run tp @s 274.5 209 -31.5 -90 0

bossbar remove thirteenboss_bar

execute as @e[tag=ThirteenDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer13
bossbar add thirteenboss_bar "顕現・神子"
bossbar set minecraft:thirteenboss_bar players @a[tag=DungeonPlay_13]
bossbar set minecraft:thirteenboss_bar color red

tag @a remove Dun13_Tower

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_13]
scoreboard players operation player TMP *= $333 int
execute store result bossbar thirteenboss_bar max run scoreboard players get player TMP
execute store result bossbar thirteenboss_bar value run scoreboard players get player TMP
execute store result entity @e[tag=ThirteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
data merge storage mikatanserver:13_boss_hpmax {Name:"minecraft:generic.max_health",Base:1024}
execute store result storage mikatanserver:13_boss_hpmax Base int 1 run scoreboard players get player TMP
data modify entity @e[tag=ThirteenDunBoss,limit=1] Attributes[2] merge from storage mikatanserver:13_boss_hpmax

## 一度のみ実行
scoreboard players set $mobs 13_TowerNowMobCnt -1

## Bossbattletag もバグる
execute as @e[tag=ThirteenDunBoss] at @s as @a[tag=DungeonPlay_13] run tag @s add BossBattle13_2
execute as @e[tag=ThirteenDunBoss] at @s as @a[tag=DungeonPlay_13] run tag @s remove BossBattle13

execute as @a[tag=DungeonPlay_13] run clear @s #boats

execute as @a[tag=BossBattle13_2] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:thirteenboss_bar value run data get entity @e[tag=ThirteenDunBoss,limit=1] Health


scoreboard objectives add ThirteenBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add ThirteenBossSkill2 minecraft.custom:minecraft.play_time