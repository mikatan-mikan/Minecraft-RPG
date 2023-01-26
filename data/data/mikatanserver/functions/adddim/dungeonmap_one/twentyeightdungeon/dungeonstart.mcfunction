execute as @s in mikatanserver:dungeon run tp @s 0.5 115 -569.5 -45 0
# title @s subtitle [{"text": "必要Lv 40以上"}]
title @s title [{"text": "夢の精と新たなお告げ","color":"red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 28
scoreboard objectives remove DungeonStartCnt28
function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/init
tag @s remove DungeonStart28
tag @a remove TwentyeightDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_28
scoreboard players set $28 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_28]