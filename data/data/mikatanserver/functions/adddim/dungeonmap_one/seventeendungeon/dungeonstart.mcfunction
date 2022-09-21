execute as @s in mikatanserver:dungeon run tp @s -450.5 63 249.5 -90 0
title @s title [{"text": "その奇跡は軌跡を描いて","color": "red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt17
function mikatanserver:adddim/dungeonmap_one/seventeendungeon/init
tag @s remove DungeonStart17
tag @a remove SeventeenDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_17
scoreboard players set $17 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_17]
gamerule keepInventory true

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/seventeen

##BossSpawn Score
scoreboard objectives add BossSpawnTimer17 minecraft.custom:minecraft.play_time