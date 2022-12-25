execute in mikatanserver:dungeon run tp @s -128.5 72 376.5 -90 0
playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"Spider Satellite","color": "green","bold": true}]
execute unless entity @e[tag=TwentysevenDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/boss/main
function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/boss/skillinit
