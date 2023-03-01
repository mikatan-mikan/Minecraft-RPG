tag @s add BossBattle35
execute in mikatanserver:dungeon run tp @s 1019.5 115 585.5 180 20
playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"金鎌","color": "white","bold": true}]
execute unless entity @e[tag=ThirtyfiveDunBoss] run function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/boss/main
function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/boss/skillinit
