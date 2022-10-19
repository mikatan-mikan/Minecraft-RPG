##初期呼び出し
execute in mikatanserver:dungeon run summon zombie 312.5 79 567.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:25},{Name:"minecraft:generic.movement_speed",Base:0.4},{Name:"minecraft:generic.follow_range",Base:15}],Health:1024,Tags:["TwentyDunBoss","TwentyDunMob","TwentyBombMob"],Silent:1b,HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3307263},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3307263},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-396727227,-1542963078,-1261443511,-1601958711],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTdhN2MzMjBlMGY5ZDdiNzBjMjU4NjEzMTYxYjU2NmUxMTE5Mzc4YmMyNTczMjEzYjY5NGVmN2QyMGZmYjM4MiJ9fX0="}]}}}}]}

#execute as @e[tag=TwentyDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer20
bossbar add twentyboss_bar "Maiden Valkyrie"
bossbar set minecraft:twentyboss_bar players @a[tag=DungeonPlay_20]
bossbar set minecraft:twentyboss_bar color red

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_20]
scoreboard players operation player TMP *= $350 int
execute store result bossbar twentyboss_bar max run scoreboard players get player TMP
execute store result bossbar twentyboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $20 BossHP run scoreboard players get player TMP
execute store result score $20_max BossHP run scoreboard players get player TMP

#Bossbattletag もバグる
execute as @e[tag=TwentyDunBoss] at @s as @a[tag=DungeonPlay_20] run tag @s add BossBattle20

execute as @a[tag=BossBattle20] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:twentyboss_bar value run data get entity @e[tag=TwentyDunBoss,limit=1] Health


scoreboard objectives add TwentyBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add TwentyBossSkill2 minecraft.custom:minecraft.play_time