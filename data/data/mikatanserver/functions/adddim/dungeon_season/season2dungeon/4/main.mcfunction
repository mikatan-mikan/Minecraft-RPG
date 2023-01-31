##初期呼び出し
execute in mikatanserver:dungeon run summon zombie -1279.5 0 1020.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:25},{Name:"minecraft:generic.movement_speed",Base:0.45},{Name:"minecraft:generic.follow_range",Base:20}],Health:1024,Tags:["season2DunBoss","season2DunMob","Non_HPBar","Dungeon_Boss"],Silent:1b,HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-219843551,1514883538,-2119571168,-1067655906],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNThhYTA2ZTg2ZDg2NzFlYWY5YWRlNWI2ZWI5ZTAyOGFlNTgxMDJiOTkzZmM5NjEzYjEwNTViMTRhZTkxMjFmIn19fQ=="}]}}}}],CustomName:'[{"text": "The Gravity","color": "#515254"}]'}

#execute as @e[tag=TwentyDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimerseason2
bossbar add season2boss_bar "The Gravity"
bossbar set minecraft:season2boss_bar name "The Gravity"
bossbar set minecraft:season2boss_bar players @a[tag=DungeonPlay_season2]
bossbar set minecraft:season2boss_bar color red

## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_season2]
scoreboard players operation player TMP *= $373 int
execute store result bossbar season2boss_bar max run scoreboard players get player TMP
execute store result bossbar season2boss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $season2 BossHP run scoreboard players get player TMP
execute store result score $season2_max BossHP run scoreboard players get player TMP

#Bossbattletag もバグる
execute as @e[tag=season2DunBoss] at @s as @a[tag=DungeonPlay_season2] run tag @s add BossBattleseason2

execute as @a[tag=BossBattleseason2] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:season2boss_bar value run data get entity @e[tag=season2DunBoss,limit=1] Health


scoreboard objectives add season2BossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add season2BossSkill2 minecraft.custom:minecraft.play_time

#give @p minecraft:player_head{display:{Name:"{\"text\":\"Abiphone XII Mega\"}"},SkullOwner:{Id:[I;-season29843551,1514883538,-season219571168,-1067655906],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNThhYTA2ZTg2ZDg2NzFlYWY5YWRlNWI2ZWI5ZTAyOGFlNTgxMDJiOTkzZmM5NjEzYjEwNTViMTRhZTkxMjFmIn19fQ=="}]}}} 1