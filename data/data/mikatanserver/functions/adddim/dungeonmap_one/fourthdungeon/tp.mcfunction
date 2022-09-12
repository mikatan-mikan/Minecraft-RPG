playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"Comet","color": "blue","bold": true}]
execute unless entity @e[tag=FourthDunBoss] run function mikatanserver:adddim/dungeonmap_one/fourthdungeon/boss/main
function mikatanserver:adddim/dungeonmap_one/fourthdungeon/boss/skillinit
