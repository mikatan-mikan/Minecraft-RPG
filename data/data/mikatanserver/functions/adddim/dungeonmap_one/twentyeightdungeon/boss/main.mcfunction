execute in mikatanserver:dungeon if score $28_Difficulty Temporary matches 0 run summon zombie 47.0 95 -641.0 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:15},{Name:"minecraft:generic.movement_speed",Base:0.30},{Name:"minecraft:generic.follow_range",Base:60}],Health:1024,Tags:["TwentyeightDunBoss","TwentyeightDunMob","Non_HPBar","Dungeon_Boss"],Silent:1b,HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:2}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1754874307,318917014,-1074418522,-1614581229],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjA2OWM0NDk4YjdlNGU5MDI3NmZlZTI4Nzg2YmY1ZTliM2ZmOGIzOWQ2NjdkMzZhNjkyM2Q4ODBhNjI3YWI3NyJ9fX0="}]}}}}],CustomName:'[{"text": "Dream Eater","color": "dark_purple"}]'}

execute in mikatanserver:dungeon if score $28_Difficulty Temporary matches 1 run summon zombie 47.0 95 -641.0 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:27},{Name:"minecraft:generic.movement_speed",Base:0.38},{Name:"minecraft:generic.follow_range",Base:15}],Health:1024,Tags:["TwentyeightDunBoss","TwentyeightDunMob","Non_HPBar","Dungeon_Boss"],Silent:1b,HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:2}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1754874307,318917014,-1074418522,-1614581229],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjA2OWM0NDk4YjdlNGU5MDI3NmZlZTI4Nzg2YmY1ZTliM2ZmOGIzOWQ2NjdkMzZhNjkyM2Q4ODBhNjI3YWI3NyJ9fX0="}]}}}}],CustomName:'[{"text": "Dream Eater","color": "dark_purple"}]'}



#execute as @e[tag=TwentyDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer28
bossbar add twentyeightboss_bar "Dream Eater"
bossbar set minecraft:twentyeightboss_bar players @a[tag=DungeonPlay_28]
bossbar set minecraft:twentyeightboss_bar color purple

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_28]
scoreboard players operation player TMP *= $400 int
execute store result bossbar twentyeightboss_bar max run scoreboard players get player TMP
execute store result bossbar twentyeightboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $28 BossHP run scoreboard players get player TMP
execute store result score $28_max BossHP run scoreboard players get player TMP

#Bossbattletag もバグる
execute as @e[tag=TwentyeightDunBoss] at @s as @a[tag=DungeonPlay_28] run tag @s add BossBattle28

execute as @a[tag=BossBattle28] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:twentyeightboss_bar value run data get entity @e[tag=TwentyeightDunBoss,limit=1] Health


scoreboard objectives add TwentyeightBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add TwentyeightBossSkill2 minecraft.custom:minecraft.play_time