execute as @s in mikatanserver:dungeon run tp @s -135 100 -195.5 90 0
title @s title [{"text": "<<波動>>","color": "gray"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt10
function mikatanserver:adddim/dungeonmap_one/tenthdungeon/init
tag @s remove DungeonStart10
tag @a remove TenthDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_10
gamemode adventure @a[tag=DungeonPlay_10]
gamerule keepInventory true

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/tenth

##BossSpawn Score
scoreboard objectives add BossSpawnTimer10 minecraft.custom:minecraft.play_time