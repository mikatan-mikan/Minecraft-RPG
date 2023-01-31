

scoreboard objectives add season2BossSkill minecraft.custom:minecraft.play_time
scoreboard objectives add season2BossSkill2 minecraft.custom:minecraft.play_time
scoreboard objectives add season2BossDush minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add season2BossWalk minecraft.custom:minecraft.walk_one_cm

##初期呼び出し
execute in mikatanserver:dungeon run summon zombie -1279.5 0 1020.5 {CustomNameVisible:1,Glowing:1,Health:1024,Attributes:[{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.follow_range",Base:5},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:0.45},{Name:"minecraft:generic.attack_damage",Base:30}],Tags:["season2DunBoss","season2DunMob","Non_HPBar","Dungeon_Boss"],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{Count:1b,id:"minecraft:leather_boots",tag:{display:{color:0},Unbreaking:1,Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:leather_leggings",tag:{display:{color:0},Unbreaking:1,Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:leather_chestplate",tag:{display:{color:0},Unbreaking:1,Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}],SkullOwner:{Id:[I;-2141896008,-1677112976,-1791892346,174682927],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTk0OTE0ZmE1NDgzMWFlMzc5ZDM3Y2IyMzMyZGQ3ZDY4MmYxZTUxMDAwNGE0ZGRjOTZmN2U5YmNlMGJhNGUyZiJ9fX0="}]}}}}],Rotation:[90.0f,0.0f]}




#execute as @e[tag=FourteenDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimerseason2
bossbar add season2boss_bar "Music of Finale"
bossbar set minecraft:season2boss_bar name "Music of Finale"
bossbar set minecraft:season2boss_bar players @a[tag=DungeonPlay_season2]
bossbar set minecraft:season2boss_bar color purple


## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_season2]
scoreboard players operation player TMP *= $450 int
execute store result bossbar season2boss_bar max run scoreboard players get player TMP
execute store result bossbar season2boss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $season2 BossHP run scoreboard players get player TMP
execute store result score $season2_max BossHP run scoreboard players get player TMP
execute store result score $season2_4 BossHP run scoreboard players get player TMP
scoreboard players operation $season2_4 BossHP /= $4 int

##hpを保持する
scoreboard players operation $MAX_HP season2BossSkill = player TMP


# execute as @e[tag=TwentytwoDunBoss] store result score @s MobNowHP run data get entity @s Health
# scoreboard objectives remove BossSpawnTimer10
# bossbar add tenthboss_bar "iron blade"
# bossbar set minecraft:tenthboss_bar players @a[tag=DungeonPlay_10]
# bossbar set minecraft:tenthboss_bar max 700
# bossbar set minecraft:tenthboss_bar color blue

#Bossbattletag もバグる
execute as @e[tag=season2DunBoss] at @s as @a[tag=DungeonPlay_season2] run tag @s add BossBattleseason2

execute as @a[tag=DungeonPlay_season2] run clear @s #boats

execute as @a[tag=BossBattleseason2] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:season2boss_bar value run data get entity @e[tag=season2DunBoss,limit=1] Health

