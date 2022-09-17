execute as @s in mikatanserver:dungeon run tp @s -454.5 223 319.5 -45 0
title @s subtitle [{"text": "必要Lv 50以上"}]
title @s title [{"text": "洞窟の先に待つのは"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt3
function mikatanserver:adddim/dungeonmap_one/thirddungeon/init
tag @s remove DungeonStart3
tag @a remove ThirdDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_3
scoreboard players set $3 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_3]