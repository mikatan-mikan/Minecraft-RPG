playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s title [{"text":"【超高難易度】","color": "red","bold": true},{"text":" : "},{"text":"その先に出した答え","color": "green","bold": true}]
execute unless entity @e[tag=SixteenDunBoss] run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/main
