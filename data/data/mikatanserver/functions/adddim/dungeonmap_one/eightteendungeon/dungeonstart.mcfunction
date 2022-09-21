execute as @s in mikatanserver:dungeon run tp @s 570.5 65 -165.5 -90 0
title @s title [{"text": "Venus & Goddess","color": "red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt18
function mikatanserver:adddim/dungeonmap_one/eightteendungeon/init
tag @s remove DungeonStart18
tag @a remove EightteenDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_18
scoreboard players set $18 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_18]
gamerule keepInventory true

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/eightteen

##BossSpawn Score
scoreboard objectives add BossSpawnTimer18 minecraft.custom:minecraft.play_time