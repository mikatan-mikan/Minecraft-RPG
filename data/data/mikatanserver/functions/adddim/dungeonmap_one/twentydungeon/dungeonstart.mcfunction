execute as @s in mikatanserver:dungeon run tp @s 312.5 79 581.5 180 0
title @s title [{"text": ">巫は夕霧を従えて<","color": "red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt20
function mikatanserver:adddim/dungeonmap_one/twentydungeon/init
tag @s remove DungeonStart20
tag @a remove TwentyDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_20
gamemode adventure @a[tag=DungeonPlay_20]
gamerule keepInventory true

scoreboard players set $20 dungeon_play_now 1

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/twenty

##BossSpawn Score
scoreboard objectives add BossSpawnTimer20 minecraft.custom:minecraft.play_time