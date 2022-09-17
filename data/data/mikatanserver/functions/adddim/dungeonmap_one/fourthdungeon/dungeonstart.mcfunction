execute as @s in mikatanserver:dungeon run tp @s -425.5 213 88.5 90 0
title @s subtitle [{"text": "必要Lv 60以上"}]
title @s title [{"text": "その輝きは彗星の如き・・・","color": "red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt4
function mikatanserver:adddim/dungeonmap_one/fourthdungeon/init
tag @s remove DungeonStart4
tag @a remove FourthDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_4
scoreboard players set $4 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_4]

##BossSpawn Score
scoreboard objectives add BossSpawnTimer4 minecraft.custom:minecraft.play_time