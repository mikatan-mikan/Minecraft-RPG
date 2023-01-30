execute as @s in mikatanserver:dungeon run tp @s 960.5 129 675.5 -70 0
# title @s subtitle [{"text": "必要Lv 40以上"}]
title @s title [{"text": "白銀の従者と刃","color":"red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 29
scoreboard objectives remove DungeonStartCnt29
function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/init
tag @s remove DungeonStart29
tag @a remove TwentynineDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_29
scoreboard players set $29 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_29]