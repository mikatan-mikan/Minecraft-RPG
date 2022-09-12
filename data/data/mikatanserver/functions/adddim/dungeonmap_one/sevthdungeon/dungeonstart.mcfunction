execute as @s in mikatanserver:dungeon run tp @s -401.0 64 26.0 -45 0
title @s subtitle [{"text": "必要Lv 120以上"}]
title @s title [{"text": "未来の先に見据えるものは・・・"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt7
function mikatanserver:adddim/dungeonmap_one/sevthdungeon/init
tag @s remove DungeonStart7
tag @a remove SevthDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_7
gamemode adventure @a[tag=DungeonPlay_7]

