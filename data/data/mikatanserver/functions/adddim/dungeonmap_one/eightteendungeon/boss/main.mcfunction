##初期呼び出し
execute in mikatanserver:dungeon run summon zombie 596.5 65 -181.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:25},{Name:"minecraft:generic.movement_speed",Base:0.4},{Name:"minecraft:generic.follow_range",Base:25}],CustomName:'[{"text": "ruins goddess","color": "green"}]',Health:1024,Tags:["EightteenDunBoss","EightteenDunMob","Eightteen_Goddess"],Silent:1b,Rotation:[90.0f,0.0f],HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16776239},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16776239},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16776239},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-766967091,-1546499956,-1724235543,187402964],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWUzMWI2ZTVmOThiN2VmMDhmMzdhYzBmMDFmMDFiN2I5M2QzM2ZmZGE5OTJlMjVmMjFmYTE0MTIzZWY2MTY0YiJ9fX0="}]}}}}]}

execute in mikatanserver:dungeon run summon zombie 596.5 65 -149.5 {Tags:["EightteenDunBoss","EightteenDunMob","Eightteen_Venus"],DeathLootTable:"mikatanserver:area/ruins/venus",Attributes:[{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:25},{Name:"minecraft:generic.movement_speed",Base:0.2},{Name:"minecraft:generic.follow_range",Base:25}],CustomName:'[{"text": "ruins venus","color": "green"}]',Silent:true,Health:1024,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;529694016,-32092811,-1863160099,-1709585381],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWEyYWM2MTRlNTMzMzI4YzA3YTI1Y2ViY2IwMmE0MGQzYmM0MWMxY2MyYzI0YTY1MDY1ZjgzMGIwNTk1MmM0ZiJ9fX0="}]}}}}],ActiveEffects:[{Id:14,ShowParticles:false,Duration:2000000000}],HandDropChances:[90.0f,0.0f],HandItems:[{},{id:"minecraft:iron_hoe",Count:1b}]}

execute as @e[tag=EightteenDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer18
bossbar add eightteenboss_bar "Venus & Goddess"
bossbar set minecraft:eightteenboss_bar players @a[tag=DungeonPlay_18]
bossbar set minecraft:eightteenboss_bar color blue

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_18]
scoreboard players operation player TMP *= $373 int
execute store result bossbar eightteenboss_bar max run scoreboard players get player TMP
execute store result bossbar eightteenboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FifteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $18 BossHP run scoreboard players get player TMP
execute store result score $18_max BossHP run scoreboard players get player TMP

#Bossbattletag もバグる
execute as @e[tag=EightteenDunBoss] at @s as @a[tag=DungeonPlay_18] run tag @s add BossBattle18

execute as @a[tag=BossBattle18] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

#execute store result bossbar minecraft:ninethboss_bar value run data get entity @e[tag=EightteenDunBoss,limit=1] Health


scoreboard objectives add EightteenBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add EightteenBossSkill2 minecraft.custom:minecraft.play_time