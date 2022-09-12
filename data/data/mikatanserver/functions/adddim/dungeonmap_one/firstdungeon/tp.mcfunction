execute in mikatanserver:dungeon run tp @s 77.5 76 -22 90 0
playsound entity.wither.spawn master @s ~ ~ ~ 1 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"Atlas","color": "green","bold": true}]
execute unless entity @e[tag=FirstDunBoss] run function mikatanserver:adddim/dungeonmap_one/firstdungeon/boss/main
