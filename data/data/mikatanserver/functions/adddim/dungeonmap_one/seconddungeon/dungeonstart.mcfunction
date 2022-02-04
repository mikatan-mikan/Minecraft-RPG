execute as @s in mikatanserver:dungeon run tp @s -90.5 10 227.5 180 0
title @s subtitle [{"text": "必要Lv 35以上"}]
title @s title [{"text": "その先にあるものは・・・","color":"red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt2
function mikatanserver:adddim/dungeonmap_one/seconddungeon/init
tag @s remove DungeonStart2
tag @a remove SecondDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_2
gamemode adventure @a[tag=DungeonPlay_2]