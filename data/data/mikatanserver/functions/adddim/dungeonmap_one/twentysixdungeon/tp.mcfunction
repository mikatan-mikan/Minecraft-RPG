playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"iron blade","color": "gold","bold": true}]
execute unless entity @e[tag=TwentysixDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentysixdungeon/boss/main