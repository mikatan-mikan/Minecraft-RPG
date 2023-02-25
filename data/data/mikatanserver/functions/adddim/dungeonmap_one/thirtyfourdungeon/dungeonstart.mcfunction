execute as @s in mikatanserver:dungeon run tp @s -1980.0 0.0 453.0 0 0
title @s title [{"text": "<<水の精霊と青の大地>>","color": "blue"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt34
function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/init
tag @s remove DungeonStart34
tag @a remove ThirtyfourDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_34
scoreboard players set $34 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_34]
gamerule keepInventory true

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/thirtyfour

##BossSpawn Score
scoreboard objectives add BossSpawnTimer34 minecraft.custom:minecraft.play_time