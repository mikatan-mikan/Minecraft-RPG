execute as @s in mikatanserver:dungeon run tp @s 1359.5 251 -1785.5 -135.0 0
# title @s subtitle [{"text": "必要Lv 40以上"}]
title @s title [{"text":"古代の鉄塊","color":"gray"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 36
scoreboard objectives remove DungeonStartCnt36
function mikatanserver:adddim/dungeonmap_one/thirtysixdungeon/init
tag @s remove DungeonStart36
tag @a remove ThirtysixDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_36
scoreboard players set $36 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_36]
execute if score $36_Difficulty Temporary matches 0 run advancement grant @s only mikatanserver:tp/dungeon/thirtysix_diff0
execute if score $36_Difficulty Temporary matches 1 run advancement grant @s only mikatanserver:tp/dungeon/thirtysix_diff1
execute if score $36_Difficulty Temporary matches 2 run advancement grant @s only mikatanserver:tp/dungeon/thirtysix_diff2

##BossSpawn Score
scoreboard objectives add BossSpawnTimer36 minecraft.custom:minecraft.play_time