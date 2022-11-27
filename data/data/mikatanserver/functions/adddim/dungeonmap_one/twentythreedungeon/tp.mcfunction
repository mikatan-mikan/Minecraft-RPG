playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"Comet","color": "blue","bold": true}]
execute unless entity @e[tag=TwentythreeDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/main
function mikatanserver:adddim/dungeonmap_one/twentythreedungeon/boss/skillinit
