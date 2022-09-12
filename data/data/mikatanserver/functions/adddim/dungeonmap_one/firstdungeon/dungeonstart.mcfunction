execute as @s in mikatanserver:dungeon run tp @s 3 11 1 -90 0
title @s subtitle [{"text": "必要Lv 10以上"}]
title @s title [{"text": "始まりの洞窟"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt1
function mikatanserver:adddim/dungeonmap_one/firstdungeon/init
tag @s remove DungeonStart1
tag @a remove FirstDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_1
gamemode adventure @a[tag=DungeonPlay_1]