##初期呼び出し
execute in mikatanserver:dungeon run summon skeleton 41.5 130 -286.5 {CustomNameVisible:1,Glowing:1,Health:1200,Attributes:[{Name:"minecraft:generic.max_health",Base:1200},{Name:"minecraft:generic.follow_range",Base:50},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:0.5d},{Name:"minecraft:generic.attack_damage",Base:18}],Tags:["EleventhDunBoss","ElevenDunMob","Non_HPBar","Dungeon_Boss"]}


execute as @e[tag=EleventhDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer11
bossbar add eleventhboss_bar "master satellite"
bossbar set minecraft:eleventhboss_bar players @a[tag=DungeonPlay_11]
bossbar set minecraft:eleventhboss_bar max 1024
bossbar set minecraft:eleventhboss_bar color blue

#Bossbattletag もバグる
execute as @e[tag=EleventhDunBoss] at @s as @a[tag=DungeonPlay_11] run tag @s add BossBattle11

execute as @a[tag=DungeonPlay_11] run clear @s #boats

execute as @a[tag=BossBattle11] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:eleventhboss_bar value run data get entity @e[tag=EleventhDunBoss,limit=1] Health


scoreboard objectives add ElevenBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add ElevenBossSkill2 minecraft.custom:minecraft.play_time

scoreboard objectives add Wind_Count dummy

scoreboard objectives add Wind_Rot_Count dummy