summon zombie 1019.5 112 576.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:1},{Name:"minecraft:generic.movement_speed",Base:0.30},{Name:"minecraft:generic.follow_range",Base:60}],Health:1024,Tags:["ThirtyfiveDunBoss","ThirtyfiveDunMob","Non_HPBar","Dungeon_Boss"],Silent:1b,HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16514816},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16514816},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16514816},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;914992382,-1596634777,-1100161338,733942647],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGMyMDQ1MTM1YjViMDcwNDJiY2U2ZGFhMDEzNGUyOTBlYzJlMzNmZTkxZmVmYjU5MzI4YmQ1YmM3MmFkZWZjZiJ9fX0="}]}}}}],CustomName:'[{"text": "黄鎌","color": "yellow"}]'}
#execute as @e[tag=TwentyDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer35
bossbar add thirtyfiveboss_bar "黄鎌"
bossbar set minecraft:thirtyfiveboss_bar players @a[tag=DungeonPlay_35]
bossbar set minecraft:thirtyfiveboss_bar color purple

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_35]
scoreboard players operation player TMP *= $256 int
execute store result bossbar thirtyfiveboss_bar max run scoreboard players get player TMP
execute store result bossbar thirtyfiveboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $35 BossHP run scoreboard players get player TMP
execute store result score $35_max BossHP run scoreboard players get player TMP

#Bossbattletag もバグる
execute as @e[tag=ThirtyfiveDunBoss] at @s as @a[tag=DungeonPlay_35] run tag @s add BossBattle35

execute as @a[tag=BossBattle35] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:thirtyfiveboss_bar value run data get entity @e[tag=ThirtyfiveDunBoss,limit=1] Health


scoreboard objectives add ThirtyfiveBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add ThirtyfiveBossSkill2 minecraft.custom:minecraft.play_time