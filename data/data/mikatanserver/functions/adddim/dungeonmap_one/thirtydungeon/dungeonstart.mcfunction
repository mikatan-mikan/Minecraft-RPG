execute as @s in mikatanserver:dungeon run tp @s -679.5 99 1102.5
title @s title [{"text": "<<炎の精霊と赤の大地>>","color": "red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt30
function mikatanserver:adddim/dungeonmap_one/thirtydungeon/init
tag @s remove DungeonStart30
tag @a remove ThirtyDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_30
scoreboard players set $30 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_30]
gamerule keepInventory true

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/thirty

##BossSpawn Score
scoreboard objectives add BossSpawnTimer30 minecraft.custom:minecraft.play_time