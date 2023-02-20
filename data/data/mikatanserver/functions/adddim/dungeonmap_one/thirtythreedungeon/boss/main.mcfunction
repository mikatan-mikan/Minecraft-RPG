execute in mikatanserver:dungeon if score $33_Difficulty Temporary matches 0 run summon zombie -2428.5 260 2554.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:23},{Name:"minecraft:generic.movement_speed",Base:0.30},{Name:"minecraft:generic.follow_range",Base:15}],Health:1024,Tags:["ThirtythreeDunBoss","ThirtythreeDunMob","Non_HPBar","Dungeon_Boss"],Silent:1b,HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:172}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:51455},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:51455},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:51455},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2099953976,-830389412,-1096969258,-1787076835],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMDQxNjQ2YzAzZjhiNGNkYmJmODFmNzE2NGRkNjNhMjljOTYzYTZjNmNlYmZlMWNhZjE5YTJlZTkyYyJ9fX0="}]}}}}],CustomName:'[{"text": "Walcrutor","color": "aqua"}]',Rotation:[-135.0f,0.0f]}

execute in mikatanserver:dungeon if score $33_Difficulty Temporary matches 1 run summon zombie -2428.5 260 2554.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:27},{Name:"minecraft:generic.movement_speed",Base:0.38},{Name:"minecraft:generic.follow_range",Base:10}],Health:1024,Tags:["ThirtythreeDunBoss","ThirtythreeDunMob","Non_HPBar","Dungeon_Boss"],Silent:1b,HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:172}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:51455},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:51455},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:51455},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2099953976,-830389412,-1096969258,-1787076835],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMDQxNjQ2YzAzZjhiNGNkYmJmODFmNzE2NGRkNjNhMjljOTYzYTZjNmNlYmZlMWNhZjE5YTJlZTkyYyJ9fX0="}]}}}}],CustomName:'[{"text": "Walcrutor","color": "aqua"}]',Rotation:[-135.0f,0.0f]}

execute in mikatanserver:dungeon run forceload remove -2500 2500 -2400 2600



#execute as @e[tag=TwentyDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer33
bossbar add thirtythreeboss_bar "Walcrutor"
bossbar set minecraft:thirtythreeboss_bar players @a[tag=DungeonPlay_33]
bossbar set minecraft:thirtythreeboss_bar color blue

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_33]
execute if score $33_Difficulty Temporary matches 0 run scoreboard players operation player TMP *= $300 int
execute if score $33_Difficulty Temporary matches 1 run scoreboard players operation player TMP *= $600 int
execute store result bossbar thirtythreeboss_bar max run scoreboard players get player TMP
execute store result bossbar thirtythreeboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $33 BossHP run scoreboard players get player TMP
execute store result score $33_max BossHP run scoreboard players get player TMP

#Bossbattletag もバグる
execute as @e[tag=ThirtythreeDunBoss] at @s as @a[tag=DungeonPlay_33] run tag @s add BossBattle33

execute as @a[tag=BossBattle33] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:thirtythreeboss_bar value run data get entity @e[tag=ThirtythreeDunBoss,limit=1] Health


scoreboard objectives add ThirtythreeBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add ThirtythreeBossSkill2 minecraft.custom:minecraft.play_time