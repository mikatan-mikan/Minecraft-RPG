execute in mikatanserver:dungeon run tp @s -112.5 72 190.5 90 0
playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"Satellite","color": "green","bold": true}]
execute unless entity @e[tag=SecondDunBoss] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/main
function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/skillinit
