execute as @s in mikatanserver:dungeon run tp @s 3058.5 38 2046.5
title @s title [{"text": "<<風の精霊と緑の大地>>","color": "green"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt26
function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/init
tag @s remove DungeonStart26
tag @a remove TwentysixDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_26
scoreboard players set $26 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_26]
gamerule keepInventory true

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/twentysix

##BossSpawn Score
scoreboard objectives add BossSpawnTimer26 minecraft.custom:minecraft.play_time