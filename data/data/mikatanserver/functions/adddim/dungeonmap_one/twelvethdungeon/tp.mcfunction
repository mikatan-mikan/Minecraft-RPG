playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"【超高難易度】","color": "red","bold": true},{"text":" : "},{"text":"とてもとても長い道","color": "green","bold": true}]
execute unless entity @e[tag=TwelvethDunBoss] run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/boss/main
