execute as @s in mikatanserver:dungeon run tp @s -426.5 213 202.5 90 0
title @s subtitle [{"text": "必要Lv 65以上"}]
title @s title [{"text": "その彗星は瞬きのように・・・","color": "red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt23
function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/init
tag @s remove DungeonStart23
tag @a remove TwentythreeDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_23
scoreboard players set $23 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_23]

##BossSpawn Score
scoreboard objectives add BossSpawnTimer23 minecraft.custom:minecraft.play_time