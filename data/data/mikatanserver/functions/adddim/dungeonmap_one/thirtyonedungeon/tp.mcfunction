execute in mikatanserver:dungeon run tp @s 1022.5 58 1485.5 90 0
playsound entity.wither.spawn master @s ~ ~ ~ 2 1
title @s subtitle [{"text": "すべて倒せ"}]
title @s title [{"text":"Boss","color": "red","bold": true},{"text":" : "},{"text":"マグマキューブ","color": "white","bold": true}]
tp @e[type=magma_cube,distance=..128] ~ -64 ~
execute unless entity @e[tag=ThirtyoneDunBoss] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/boss/main