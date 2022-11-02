##初期呼び出し
execute in mikatanserver:dungeon run summon zombie -439.5 63 249.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:25},{Name:"minecraft:generic.movement_speed",Base:0.4}],Health:1024,Tags:["SeventeenDunBoss","SeventeenDunMob","Non_HPBar","Dungeon_Boss"],Silent:1b,Rotation:[90.0f,0.0f],HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16724530},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16724530},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1769437612,-825733463,-2093504318,468327739],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDI1NTU3YmQ1YTgyYjBjMjEwNDVlMzIyMGMzMzgwYWM5ZTBlZDQ2ZGM4M2I1ZjAwYTlkZjJlM2QzZTUwNDVhMiJ9fX0="}]}}}}]}



execute as @e[tag=SeventeenDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer17
bossbar add seventeenboss_bar "剣聖：Michelle"
bossbar set minecraft:seventeenboss_bar players @a[tag=DungeonPlay_17]
bossbar set minecraft:seventeenboss_bar color blue

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_17]
scoreboard players operation player TMP *= $350 int
execute store result bossbar seventeenboss_bar max run scoreboard players get player TMP
execute store result bossbar seventeenboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FifteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $17 BossHP run scoreboard players get player TMP
execute store result score $17_max BossHP run scoreboard players get player TMP

#Bossbattletag もバグる
execute as @e[tag=SeventeenDunBoss] at @s as @a[tag=DungeonPlay_17] run tag @s add BossBattle17

execute as @a[tag=BossBattle17] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

#execute store result bossbar minecraft:ninethboss_bar value run data get entity @e[tag=SeventeenDunBoss,limit=1] Health


scoreboard objectives add SeventeenBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add SeventeenBossSkill2 minecraft.custom:minecraft.play_time