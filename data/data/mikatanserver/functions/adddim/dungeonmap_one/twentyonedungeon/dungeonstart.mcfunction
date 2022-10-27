execute as @s in mikatanserver:dungeon run tp @s -69.5 60 -246.5 180 0 
title @s title [{"text": "重力の操縦者","color": "red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt21
function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/init
tag @s remove DungeonStart21
tag @a remove TwentyoneDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_21
gamemode adventure @a[tag=DungeonPlay_21]
gamerule keepInventory true

scoreboard players set $21 dungeon_play_now 1

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/twentyone

##BossSpawn Score
scoreboard objectives add BossSpawnTimer21 minecraft.custom:minecraft.play_time