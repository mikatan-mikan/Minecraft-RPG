execute as @s in mikatanserver:dungeon run tp @s 53 130 -285.5 90 0
title @s title [{"text": "再臨　その先にあるものは・・・","color": "green"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt11
function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/init
tag @s remove DungeonStart11
tag @a remove EleventhDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_11
gamemode adventure @a[tag=DungeonPlay_11]
gamerule keepInventory true

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/eleventh

##BossSpawn Score
scoreboard objectives add BossSpawnTimer11 minecraft.custom:minecraft.play_time