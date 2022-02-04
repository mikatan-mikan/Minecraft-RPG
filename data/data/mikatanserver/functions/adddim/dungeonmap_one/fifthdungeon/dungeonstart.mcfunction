execute as @s in mikatanserver:dungeon run tp @s -209.5 173 -5.5 -45 0
title @s subtitle [{"text": "必要Lv 75以上"}]
title @s title [{"text": "そこにあるもの"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt5
function mikatanserver:adddim/dungeonmap_one/fifthdungeon/init
tag @s remove DungeonStart5
tag @a remove FifthDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_5
gamemode adventure @a[tag=DungeonPlay_5]

##Troll Skill Score
scoreboard objectives add TrollFifDunSkill dummy
scoreboard objectives add TrollArmorCT dummy

##バックステップ
scoreboard objectives add FifDunBackS dummy