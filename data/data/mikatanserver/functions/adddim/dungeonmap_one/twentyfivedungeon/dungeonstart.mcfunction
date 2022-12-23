execute as @s in mikatanserver:dungeon run tp @s 2433.5 237 -323.5 40 0
title @s title [{"text": "聖杯 それは・・・","color": "green"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt25
scoreboard objectives add 25_boss_hp_checker dummy
scoreboard objectives add TwentyfiveDunDeath deathCount
tag @s remove DungeonStart25
tag @a remove TwentyfiveDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_25
scoreboard players set $25 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_25]
gamerule keepInventory true

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/twentyfive

##BossSpawn Score
scoreboard objectives add BossSpawnTimer25 minecraft.custom:minecraft.play_time