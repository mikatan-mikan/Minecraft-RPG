execute as @s in mikatanserver:dungeon run tp @s 1085.5 -59 1512.5 135.0 0
# title @s subtitle [{"text": "必要Lv 40以上"}]
title @s title [{"text": "マグマキューブ大量発生！！","color":"red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 31
scoreboard objectives remove DungeonStartCnt31
function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/init
tag @s remove DungeonStart31
tag @a remove ThirtyoneDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_31
scoreboard players set $31 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_31]
advancement grant @s only mikatanserver:tp/dungeon/thirtyone