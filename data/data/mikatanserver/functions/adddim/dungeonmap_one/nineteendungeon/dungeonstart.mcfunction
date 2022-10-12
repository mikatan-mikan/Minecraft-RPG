execute as @s in mikatanserver:dungeon run tp @s -772.5 159 -341.5 180 0
title @s title [{"text": "別解","color": "red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt19
function mikatanserver:adddim/dungeonmap_one/nineteendungeon/init
tag @s remove DungeonStart19
tag @a remove NineteenDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_19
gamemode adventure @a[tag=DungeonPlay_19]
gamerule keepInventory true

scoreboard players set $19 dungeon_play_now 1

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/nineteen

##BossSpawn Score
scoreboard objectives add BossSpawnTimer19 minecraft.custom:minecraft.play_time