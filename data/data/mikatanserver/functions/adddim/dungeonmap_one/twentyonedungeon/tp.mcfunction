playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"The Gravity","color": "yellow","bold": true}]
#execute unless entity @e[tag=EigthDunBoss] run function mikatanserver:adddim/dungeonmap_one/eigthdungeon/boss/main
