execute as @s in mikatanserver:dungeon run tp @s -118 142 512
title @s subtitle [{"text": "必要Lv 140以上"}]
title @s title [{"text": "それは訪れることのなかった光の先・・・","color": "red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt8
function mikatanserver:adddim/dungeonmap_one/eigthdungeon/init
tag @s remove DungeonStart8
tag @a remove EigthDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_8
gamemode adventure @a[tag=DungeonPlay_8]

##BossSpawn Score
scoreboard objectives add BossSpawnTimer8 minecraft.custom:minecraft.play_time