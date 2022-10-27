##初期呼び出し
execute in mikatanserver:dungeon run summon iron_golem -143.5 100 -195.5 {CustomNameVisible:1,Glowing:1,Health:700,Attributes:[{Name:"minecraft:generic.max_health",Base:700},{Name:"minecraft:generic.follow_range",Base:50},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:1d},{Name:"minecraft:generic.attack_damage",Base:18}],Tags:["TenthDunBoss","TenDunMob"]}


execute as @e[tag=TenthDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer10
bossbar add tenthboss_bar "iron blade"
bossbar set minecraft:tenthboss_bar players @a[tag=DungeonPlay_10]
bossbar set minecraft:tenthboss_bar max 700
bossbar set minecraft:tenthboss_bar color blue

#Bossbattletag もバグる
execute as @e[tag=TenthDunBoss] at @s as @a[tag=DungeonPlay_10] run tag @s add BossBattle10

execute as @a[tag=DungeonPlay_10] run clear @s #boats

execute as @a[tag=BossBattle10] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:tenthboss_bar value run data get entity @e[tag=TenthDunBoss,limit=1] Health


scoreboard objectives add TenBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add TenBossSkill2 minecraft.custom:minecraft.play_time