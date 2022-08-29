##初期呼び出し
execute in mikatanserver:dungeon run summon zombie 297.0 139 -31.0 {CustomNameVisible:1,Glowing:1,Health:1024,Attributes:[{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.follow_range",Base:50},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:0.5d},{Name:"minecraft:generic.attack_damage",Base:18}],Tags:["ThirteenDunBoss","ThirteenDunMob"],Rotation:[-90.0f,0.0f]}


execute as @e[tag=ThirteenDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer13
bossbar add eleventhboss_bar "羽衣に包まれし、神子"
bossbar set minecraft:eleventhboss_bar players @a[tag=DungeonPlay_13]
bossbar set minecraft:eleventhboss_bar color blue



##人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_13]
scoreboard players operation player TMP *= $200 int
execute store result bossbar twelvethboss_bar max run scoreboard players get player TMP
execute store result bossbar twelvethboss_bar value run scoreboard players get player TMP
execute store result entity @e[tag=ThirteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
data merge storage mikatanserver:13_boss_hpmax {Name:"minecraft:generic.max_health",Base:1024}
execute store result storage mikatanserver:13_boss_hpmax Base int 1 run scoreboard players get player TMP
data modify entity @e[tag=ThirteenDunBoss,limit=1] Attributes merge from storage mikatanserver:13_boss_hpmax

#Bossbattletag もバグる
execute as @e[tag=ThirteenDunBoss] at @s as @a[tag=DungeonPlay_13] run tag @s add BossBattle13

execute as @a[tag=DungeonPlay_13] run clear @s #boats

execute as @a[tag=BossBattle13] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:thirteenboss_bar value run data get entity @e[tag=ThirteenDunBoss,limit=1] Health


scoreboard objectives add ThirteenBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add ThirteenBossSkill2 minecraft.custom:minecraft.play_time