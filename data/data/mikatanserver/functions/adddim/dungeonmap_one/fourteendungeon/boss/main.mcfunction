##初期呼び出し
execute in mikatanserver:dungeon run summon zombie -12.5 126 -142 {CustomNameVisible:1,Glowing:1,Health:1200,Attributes:[{Name:"minecraft:generic.max_health",Base:1200},{Name:"minecraft:generic.follow_range",Base:15},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:0.45d},{Name:"minecraft:generic.attack_damage",Base:22}],Tags:["FourteenDunBoss","FourteenDunMob"],Rotation:[-90.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12266239},Enchantments:[{id:"minecraft:protection",lvl:4}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12266239},Enchantments:[{id:"minecraft:protection",lvl:4}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12266239},Enchantments:[{id:"minecraft:protection",lvl:4}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-936030791,-59424751,-1734737612,1911007876],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVjM2ZmNTYzMjkwYjEzZmYzYmNjMzY4OThhZjdlYWE5ODhiNmNjMThkYzI1NDE0N2Y1ODM3NGFmZTliMjFiOSJ9fX0="}]}},Enchantments:[{id:"minecraft:protection",lvl:4}]}}],CustomName:'[{"text": "略奪者","color": "dark_purple"}]'}


#execute as @e[tag=FourteenDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer14
bossbar add fourteenboss_bar "略奪者"
bossbar set minecraft:fourteenboss_bar players @a[tag=DungeonPlay_14]
bossbar set minecraft:fourteenboss_bar color purple

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_14]
scoreboard players operation player TMP *= $256 int
execute store result bossbar fourteenboss_bar max run scoreboard players get player TMP
execute store result bossbar fourteenboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $14 BossHP run scoreboard players get player TMP
execute store result score $14_max BossHP run scoreboard players get player TMP

#Bossbattletag もバグる
execute as @e[tag=FourteenDunBoss] at @s as @a[tag=DungeonPlay_14] run tag @s add BossBattle14

execute as @a[tag=DungeonPlay_14] run clear @s #boats

execute as @a[tag=BossBattle14] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:fourteenboss_bar value run data get entity @e[tag=FourteenDunBoss,limit=1] Health


scoreboard objectives add FourteenBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add FourteenBossSkill2 minecraft.custom:minecraft.play_time