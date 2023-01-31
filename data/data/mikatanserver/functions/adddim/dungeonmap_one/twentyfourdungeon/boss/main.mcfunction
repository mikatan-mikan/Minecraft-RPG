

scoreboard objectives add TwentyfourBossSkill minecraft.custom:minecraft.play_time
scoreboard objectives add TwentyfourBossSkill2 minecraft.custom:minecraft.play_time
scoreboard objectives add TwentyfourBossDush minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add TwentyfourBossWalk minecraft.custom:minecraft.walk_one_cm

##初期呼び出し
execute in mikatanserver:dungeon if score $24_Difficulty Temporary matches 0 in mikatanserver:dungeon run summon zombie -166.5 85 1195.5 {CustomNameVisible:1,Glowing:1,Health:1024,Attributes:[{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.follow_range",Base:30},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:0.15},{Name:"minecraft:generic.attack_damage",Base:5}],Tags:["TwentyfourDunBoss","TwentyfourDunMob","Non_HPBar","Dungeon_Boss"],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{Count:1b,id:"minecraft:leather_boots",tag:{display:{color:0},Unbreaking:1}},{Count:1b,id:"minecraft:leather_leggings",tag:{display:{color:0},Unbreaking:1}},{Count:1b,id:"minecraft:leather_chestplate",tag:{display:{color:0},Unbreaking:1}},{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;-2141896008,-1677112976,-1791892346,174682927],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTk0OTE0ZmE1NDgzMWFlMzc5ZDM3Y2IyMzMyZGQ3ZDY4MmYxZTUxMDAwNGE0ZGRjOTZmN2U5YmNlMGJhNGUyZiJ9fX0="}]}}}}],Rotation:[90.0f,0.0f]}
execute in mikatanserver:dungeon if score $24_Difficulty Temporary matches 1 in mikatanserver:dungeon run summon zombie -166.5 85 1195.5 {CustomNameVisible:1,Glowing:1,Health:1024,Attributes:[{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.follow_range",Base:35},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:0.35},{Name:"minecraft:generic.attack_damage",Base:15}],Tags:["TwentyfourDunBoss","TwentyfourDunMob","Non_HPBar","Dungeon_Boss"],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{Count:1b,id:"minecraft:leather_boots",tag:{display:{color:0},Unbreaking:1,Enchantments:[{id:"minecraft:protection",lvl:2s}]}},{Count:1b,id:"minecraft:leather_leggings",tag:{display:{color:0},Unbreaking:1,Enchantments:[{id:"minecraft:protection",lvl:2s}]}},{Count:1b,id:"minecraft:leather_chestplate",tag:{display:{color:0},Unbreaking:1,Enchantments:[{id:"minecraft:protection",lvl:2s}]}},{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:protection",lvl:2s}],SkullOwner:{Id:[I;-2141896008,-1677112976,-1791892346,174682927],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTk0OTE0ZmE1NDgzMWFlMzc5ZDM3Y2IyMzMyZGQ3ZDY4MmYxZTUxMDAwNGE0ZGRjOTZmN2U5YmNlMGJhNGUyZiJ9fX0="}]}}}}],Rotation:[90.0f,0.0f]}
execute in mikatanserver:dungeon if score $24_Difficulty Temporary matches 2 in mikatanserver:dungeon run summon zombie -166.5 85 1195.5 {CustomNameVisible:1,Glowing:1,Health:1024,Attributes:[{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.follow_range",Base:20},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:0.40},{Name:"minecraft:generic.attack_damage",Base:25}],Tags:["TwentyfourDunBoss","TwentyfourDunMob","Non_HPBar","Dungeon_Boss"],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{Count:1b,id:"minecraft:leather_boots",tag:{display:{color:0},Unbreaking:1,Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:leather_leggings",tag:{display:{color:0},Unbreaking:1,Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:leather_chestplate",tag:{display:{color:0},Unbreaking:1,Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}],SkullOwner:{Id:[I;-2141896008,-1677112976,-1791892346,174682927],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTk0OTE0ZmE1NDgzMWFlMzc5ZDM3Y2IyMzMyZGQ3ZDY4MmYxZTUxMDAwNGE0ZGRjOTZmN2U5YmNlMGJhNGUyZiJ9fX0="}]}}}}],Rotation:[90.0f,0.0f]}
execute in mikatanserver:dungeon if score $24_Difficulty Temporary matches 3 in mikatanserver:dungeon run summon zombie -166.5 85 1195.5 {CustomNameVisible:1,Glowing:1,Health:1024,Attributes:[{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.follow_range",Base:5},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:0.45},{Name:"minecraft:generic.attack_damage",Base:30}],Tags:["TwentyfourDunBoss","TwentyfourDunMob","Non_HPBar","Dungeon_Boss"],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{Count:1b,id:"minecraft:leather_boots",tag:{display:{color:0},Unbreaking:1,Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:leather_leggings",tag:{display:{color:0},Unbreaking:1,Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:leather_chestplate",tag:{display:{color:0},Unbreaking:1,Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{Count:1b,id:"minecraft:player_head",tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}],SkullOwner:{Id:[I;-2141896008,-1677112976,-1791892346,174682927],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTk0OTE0ZmE1NDgzMWFlMzc5ZDM3Y2IyMzMyZGQ3ZDY4MmYxZTUxMDAwNGE0ZGRjOTZmN2U5YmNlMGJhNGUyZiJ9fX0="}]}}}}],Rotation:[90.0f,0.0f]}


##難易度の代入
scoreboard players operation $diff TwentyfourBossSkill = $24_Difficulty Temporary
# scoreboard players reset $24_Difficulty Temporary


#execute as @e[tag=FourteenDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer24
bossbar add twentyfourboss_bar "Music of Finale"
bossbar set minecraft:twentyfourboss_bar players @a[tag=DungeonPlay_24]
bossbar set minecraft:twentyfourboss_bar color purple


## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_24]
execute if score $diff TwentyfourBossSkill matches 0 run scoreboard players operation player TMP *= $150 int
execute if score $diff TwentyfourBossSkill matches 1 run scoreboard players operation player TMP *= $250 int
execute if score $diff TwentyfourBossSkill matches 2 run scoreboard players operation player TMP *= $350 int
execute if score $diff TwentyfourBossSkill matches 3 run scoreboard players operation player TMP *= $450 int
execute store result bossbar twentyfourboss_bar max run scoreboard players get player TMP
execute store result bossbar twentyfourboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $24 BossHP run scoreboard players get player TMP
execute store result score $24_max BossHP run scoreboard players get player TMP
execute store result score $24_4 BossHP run scoreboard players get player TMP
scoreboard players operation $24_4 BossHP /= $4 int

##hpを保持する
scoreboard players operation $MAX_HP TwentyfourBossSkill = player TMP


# execute as @e[tag=TwentytwoDunBoss] store result score @s MobNowHP run data get entity @s Health
# scoreboard objectives remove BossSpawnTimer10
# bossbar add tenthboss_bar "iron blade"
# bossbar set minecraft:tenthboss_bar players @a[tag=DungeonPlay_10]
# bossbar set minecraft:tenthboss_bar max 700
# bossbar set minecraft:tenthboss_bar color blue

#Bossbattletag もバグる
execute as @e[tag=TwentyfourDunBoss] at @s as @a[tag=DungeonPlay_24] run tag @s add BossBattle24

execute as @a[tag=DungeonPlay_24] run clear @s #boats

execute as @a[tag=BossBattle24] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:twentyfourboss_bar value run data get entity @e[tag=TwentyfourDunBoss,limit=1] Health

