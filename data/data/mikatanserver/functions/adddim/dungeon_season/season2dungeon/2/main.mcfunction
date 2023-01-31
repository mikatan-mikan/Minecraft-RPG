##初期呼び出し
execute in mikatanserver:dungeon run summon zombie -1279.5 0 1020.5 {CustomNameVisible:1,Glowing:1,Health:1200,Attributes:[{Name:"minecraft:generic.max_health",Base:1200},{Name:"minecraft:generic.follow_range",Base:50},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:0.5d},{Name:"minecraft:generic.attack_damage",Base:18},{Name:"minecraft:generic.follow_range",Base:20}],Tags:["season2DunBoss","season2DunMob","Non_HPBar","Dungeon_Boss"],Rotation:[-90.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16730666},Enchantments:[{id:"minecraft:protection",lvl:4}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16730666},Enchantments:[{id:"minecraft:protection",lvl:4}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16730666},Enchantments:[{id:"minecraft:protection",lvl:4}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1515281263,-898085470,-1779338941,-552076572],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjAyMGMzMzY5MjhkOTRmODhiZmNlYjUxODE4YTY0MDQwYjgyNjZkNDk3ZDM4ZWUxMjhlNDNhNGUwMmUyYTM2In19fQ=="}]}},Enchantments:[{id:"minecraft:protection",lvl:4}]}}],CustomName:'[{"text": "溶岩塊","color": "red"}]'}


execute as @e[tag=season2thDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimerseason2
bossbar add season2boss_bar "溶岩塊"
bossbar set minecraft:season2boss_bar name "溶岩塊"
bossbar set minecraft:season2boss_bar players @a[tag=DungeonPlay_season2]
bossbar set minecraft:season2boss_bar color purple

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_season2]
scoreboard players operation player TMP *= $350 int
execute store result bossbar season2boss_bar max run scoreboard players get player TMP
execute store result bossbar season2boss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=season2DunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $season2 BossHP run scoreboard players get player TMP
execute store result score $season2_max BossHP run scoreboard players get player TMP

#Bossbattletag もバグる
execute as @e[tag=season2DunBoss] at @s as @a[tag=DungeonPlay_season2] run tag @s add BossBattleseason2

execute as @a[tag=DungeonPlay_season2] run clear @s #boats

execute as @a[tag=BossBattleseason2] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:season2boss_bar value run data get entity @e[tag=season2DunBoss,limit=1] Health


scoreboard objectives add season2BossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add season2BossSkill2 minecraft.custom:minecraft.play_time