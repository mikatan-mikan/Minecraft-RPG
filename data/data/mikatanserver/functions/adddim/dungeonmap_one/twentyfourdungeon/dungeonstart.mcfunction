execute as @s in mikatanserver:dungeon run tp @s -183.5 85 1195.5 -90 0
title @s subtitle [{"text": "その存在は新時代のメロディを奏でて","color": "red"}]
title @s title [{"text": "<<その存在は未知なる旋律を奏でて>>","color": "red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt24
function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/init
tag @s remove DungeonStart24
tag @a remove TwentyfourDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_24
scoreboard players set $24 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_24]
gamerule keepInventory true

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]


execute if score $24_Difficulty Temporary matches 0 run advancement grant @s only mikatanserver:tp/dungeon/twentyfour_diff0
execute if score $24_Difficulty Temporary matches 1 run advancement grant @s only mikatanserver:tp/dungeon/twentyfour_diff1
execute if score $24_Difficulty Temporary matches 2 run advancement grant @s only mikatanserver:tp/dungeon/twentyfour_diff2
execute if score $24_Difficulty Temporary matches 3 run advancement grant @s only mikatanserver:tp/dungeon/twentyfour_diff3


##BossSpawn Score
scoreboard objectives add BossSpawnTimer24 minecraft.custom:minecraft.play_time