##初期呼び出し
execute in mikatanserver:dungeon run summon iron_golem -1279.5 0 1020.5 {CustomNameVisible:1,Glowing:1,Health:700,Attributes:[{Name:"minecraft:generic.max_health",Base:700},{Name:"minecraft:generic.follow_range",Base:50},{Name:"minecraft:generic.knockback_resistance",Base:1d},{Name:"minecraft:generic.movement_speed",Base:1d},{Name:"minecraft:generic.attack_damage",Base:18}],Tags:["season2DunBoss","season2DunMob","Dungeon_Boss"]}


execute as @e[tag=season2DunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimerseason2
bossbar add season2boss_bar "iron blade"
bossbar set minecraft:season2boss_bar name "iron blade"
bossbar set minecraft:season2boss_bar players @a[tag=DungeonPlay_season2]
bossbar set minecraft:season2boss_bar max 7000
bossbar set minecraft:season2boss_bar color blue

#Bossbattletag もバグる
execute as @e[tag=season2DunBoss] at @s as @a[tag=DungeonPlay_season2] run tag @s add BossBattleseason2

execute as @a[tag=DungeonPlay_season2] run clear @s #boats

execute as @a[tag=BossBattleseason2] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:season2boss_bar value run data get entity @e[tag=season2DunBoss,limit=1] Health


scoreboard objectives add season2BossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add season2BossSkill2 minecraft.custom:minecraft.play_time