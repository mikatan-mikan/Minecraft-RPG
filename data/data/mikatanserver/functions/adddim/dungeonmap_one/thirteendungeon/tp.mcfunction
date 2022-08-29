playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"master satellite","color": "green","bold": true}]
execute unless entity @e[tag=EleventhDunBoss] run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/main
