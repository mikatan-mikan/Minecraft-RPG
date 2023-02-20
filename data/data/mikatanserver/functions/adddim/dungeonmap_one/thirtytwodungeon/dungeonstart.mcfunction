execute as @s in mikatanserver:dungeon run tp @s 1678.5 203 -457.5 45 0
# title @s subtitle [{"text": "必要Lv 40以上"}]
title @s title [{"text": "反逆の新緑","color":"green"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 32
scoreboard objectives remove DungeonStartCnt32
function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/init
tag @s remove DungeonStart32
tag @a remove ThirtytwoDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_32
scoreboard players set $32 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_32]
execute if score $32_Difficulty Temporary matches 0 run advancement grant @s only mikatanserver:tp/dungeon/thirtytwo_diff0
execute if score $32_Difficulty Temporary matches 1 run advancement grant @s only mikatanserver:tp/dungeon/thirtytwo_diff1
execute if score $32_Difficulty Temporary matches 2 run advancement grant @s only mikatanserver:tp/dungeon/thirtytwo_diff2

##BossSpawn Score
scoreboard objectives add BossSpawnTimer32 minecraft.custom:minecraft.play_time