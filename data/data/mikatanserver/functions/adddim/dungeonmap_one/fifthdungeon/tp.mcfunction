execute in mikatanserver:dungeon run tp @s -175.5 237 -68.5 -90 0
playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"Emissary of stars","color": "blue","bold": true}]
execute unless entity @e[tag=FifthDunBoss] run function mikatanserver:adddim/dungeonmap_one/fifthdungeon/boss/main
function mikatanserver:adddim/dungeonmap_one/fifthdungeon/boss/skillinit
