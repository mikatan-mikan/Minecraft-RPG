execute as @s in mikatanserver:dungeon run tp @s 120.5 124.0 474.5 90 0
title @s title [{"text": "溶岩流から生まれるもの","color": "green"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt15
scoreboard objectives add 15_boss_hp_checker dummy
function mikatanserver:adddim/dungeonmap_one/fifteendungeon/init
tag @s remove DungeonStart15
tag @a remove FifteenDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_15
gamemode adventure @a[tag=DungeonPlay_15]
gamerule keepInventory true

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/fifteen

##BossSpawn Score
scoreboard objectives add BossSpawnTimer15 minecraft.custom:minecraft.play_time