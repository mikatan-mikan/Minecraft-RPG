playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"溶岩塊","color": "green","bold": true}]
execute unless entity @e[tag=FifteenDunBoss] run function mikatanserver:adddim/dungeonmap_one/fifteendungeon/boss/main
