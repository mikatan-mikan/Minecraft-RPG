playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"聖杯を奪う者","color": "green","bold": true}]
execute unless entity @e[tag=TwentyfiveDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/boss/main