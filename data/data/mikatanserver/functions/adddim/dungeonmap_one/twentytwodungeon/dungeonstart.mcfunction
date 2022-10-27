execute as @s in mikatanserver:dungeon run tp @s -135 100 -245.5 90 0
title @s title [{"text": "<<波動>>","color": "gray"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt22
function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/init
tag @s remove DungeonStart22
tag @a remove TwentytwoDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_22
scoreboard players set $22 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_22]
gamerule keepInventory true

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/twentytwo

##BossSpawn Score
scoreboard objectives add BossSpawnTimer22 minecraft.custom:minecraft.play_time