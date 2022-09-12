execute as @s in mikatanserver:dungeon run tp @s -317.5 135 3.5 -90 0
title @s title [{"text": "奇跡の剣舞","color": "red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt9
function mikatanserver:adddim/dungeonmap_one/ninethdungeon/init
tag @s remove DungeonStart9
tag @a remove NinethDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_9
gamemode adventure @a[tag=DungeonPlay_9]
gamerule keepInventory true

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/nineth

##BossSpawn Score
scoreboard objectives add BossSpawnTimer9 minecraft.custom:minecraft.play_time