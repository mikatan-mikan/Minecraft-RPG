execute as @s in mikatanserver:dungeon run tp @s 323.0 27 -31.0 90.0 0
title @s title [{"text": "その頂点に顕すのは","color": "red"}]
gamerule mobGriefing false
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt13
function mikatanserver:adddim/dungeonmap_one/thirteendungeon/init
tag @s remove DungeonStart13
tag @a remove ThirteenDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_13
tag @s add Dun13_Tower
scoreboard players set $13 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_13]
gamerule keepInventory true

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/thirteen

##BossSpawn Score
scoreboard objectives add BossSpawnTimer13 minecraft.custom:minecraft.play_time