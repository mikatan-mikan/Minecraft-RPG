execute as @s in mikatanserver:dungeon run tp @s -95.5 8 409.5 180 0
title @s subtitle [{"text": "必要Lv 40以上"}]
title @s title [{"text": "その先の存在","color":"red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 27
scoreboard objectives remove DungeonStartCnt27
function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/init
tag @s remove DungeonStart27
tag @a remove TwentysevenDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_27
scoreboard players set $27 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_27]