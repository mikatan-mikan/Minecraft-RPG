
execute in mikatanserver:dungeon run tp @s 1031.5 122 653.5 0 10
playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"白刃","color": "white","bold": true}]
execute unless entity @e[tag=TwentynineDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/boss/main
function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/boss/skillinit
