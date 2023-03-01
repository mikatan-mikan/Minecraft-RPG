execute as @s in mikatanserver:dungeon run tp @s 959.5 123 580.5 -135.0 0
# title @s subtitle [{"text": "必要Lv 40以上"}]
title @s title [{"text": "金色の従者と鎌","color":"red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 35
scoreboard objectives remove DungeonStartCnt35
function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/init
tag @s remove DungeonStart35
tag @a remove ThirtyfiveDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_35
scoreboard players set $35 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_35]