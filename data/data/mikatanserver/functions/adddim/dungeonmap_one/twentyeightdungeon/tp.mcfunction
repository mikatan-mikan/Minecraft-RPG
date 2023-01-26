execute in mikatanserver:dungeon run tp @s 30.5 95 -657.5 -45 0
playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"Dream Eater","color": "green","bold": true}]
execute unless entity @e[tag=TwentyeightDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/main
function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skillinit
