execute as @s in mikatanserver:dungeon run tp @s 125.5 61 1113.5 180 0
title @s title [{"text": "その先に出した答え","color": "green"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt16
function mikatanserver:adddim/dungeonmap_one/sixteendungeon/init
tag @s remove DungeonStart16
tag @a remove SixteenDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_16
scoreboard players set $16 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_16]
gamerule keepInventory true

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/sixteen

##BossSpawn Score
scoreboard objectives add BossSpawnTimer16 minecraft.custom:minecraft.play_time