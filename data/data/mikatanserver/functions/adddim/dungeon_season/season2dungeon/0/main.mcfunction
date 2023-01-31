##初期呼び出し
execute in mikatanserver:dungeon run summon zombie -1279.5 0 1020.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:25},{Name:"minecraft:generic.movement_speed",Base:0.4}],Health:1024,Tags:["season2DunBoss","season2DunMob","Non_HPBar","Dungeon_Boss"],Silent:1b,Rotation:[-90.0f,0.0f],HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16724530},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16724530},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1769437612,-825733463,-2093504318,468327739],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDI1NTU3YmQ1YTgyYjBjMjEwNDVlMzIyMGMzMzgwYWM5ZTBlZDQ2ZGM4M2I1ZjAwYTlkZjJlM2QzZTUwNDVhMiJ9fX0="}]}}}}]}


# function mikatanserver:adddim/dungeon_season/season2dungeon/0/main
execute as @e[tag=season2DunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimerseason2
bossbar add season2boss_bar "剣聖：Michelle"
bossbar set minecraft:season2boss_bar name "剣聖：Michelle"
bossbar set minecraft:season2boss_bar players @a[tag=DungeonPlay_season2]
bossbar set minecraft:season2boss_bar color blue

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_season2]
scoreboard players operation player TMP *= $850 int
execute store result bossbar season2boss_bar max run scoreboard players get player TMP
execute store result bossbar season2boss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FifteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $season2 BossHP run scoreboard players get player TMP
execute store result score $season2_max BossHP run scoreboard players get player TMP

#Bossbattletag もバグる
execute as @e[tag=season2DunBoss] at @s as @a[tag=DungeonPlay_season2] run tag @s add BossBattleseason2

execute as @a[tag=BossBattleseason2] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

#execute store result bossbar minecraft:ninethboss_bar value run data get entity @e[tag=season2DunBoss,limit=1] Health


scoreboard objectives add season2BossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add season2BossSkill2 minecraft.custom:minecraft.play_time