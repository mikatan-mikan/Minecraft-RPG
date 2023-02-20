execute as @s in mikatanserver:dungeon run tp @s -2470.0 51 2518.0 -45 0
execute in mikatanserver:dungeon run summon marker -2470.0 51 2518.0 {Tags:["ThirtythreeDunMob","33_GenerateMarker"]}
# title @s subtitle [{"text": "必要Lv 40以上"}]
title @s title [{"text": "深海の支配者","color":"aqua"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 33
scoreboard objectives remove DungeonStartCnt33

tag @s remove DungeonStart33
tag @a remove ThirtythreeDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_33
scoreboard players set $33 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_33]