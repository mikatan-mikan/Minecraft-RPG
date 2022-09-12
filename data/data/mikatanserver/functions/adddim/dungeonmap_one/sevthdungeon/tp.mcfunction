playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"future of anything","yellow": "blue","bold": true}]
execute unless entity @e[tag=SevthDunBoss] run function mikatanserver:adddim/dungeonmap_one/sevthdungeon/boss/main
function mikatanserver:adddim/dungeonmap_one/sevthdungeon/boss/skillinit
