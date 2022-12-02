playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"Music of Finale","color": "gold","bold": true}]
execute unless entity @e[tag=TwentyfourDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/boss/main
