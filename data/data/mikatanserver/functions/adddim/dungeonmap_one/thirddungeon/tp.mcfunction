
execute in mikatanserver:dungeon run tp @s -302.5 243 402 -90 0
playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"Lou","color": "green","bold": true}]
execute unless entity @e[tag=ThirdDunBoss] run function mikatanserver:adddim/dungeonmap_one/thirddungeon/boss/main
function mikatanserver:adddim/dungeonmap_one/thirddungeon/boss/skillinit
