execute as @s in mikatanserver:dungeon run tp @s -0.5 126 -142.5 90 0
title @s title [{"text": "略奪者を追いかけた先に","color": "green"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt14
scoreboard objectives add 14_boss_hp_checker dummy
function mikatanserver:adddim/dungeonmap_one/fourteendungeon/init
tag @s remove DungeonStart14
tag @a remove FourteenDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_14
scoreboard players set $14 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_14]
gamerule keepInventory true

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/fourteen

##BossSpawn Score
scoreboard objectives add BossSpawnTimer14 minecraft.custom:minecraft.play_time