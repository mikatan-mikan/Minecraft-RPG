execute in mikatanserver:dungeon run tp @s -2404.5 260 2530.5 45 0
playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"Walcrutor","color": "aqua","bold": true}]
execute unless entity @e[tag=ThirtythreeDunBoss] run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/main
function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/boss/skillinit
