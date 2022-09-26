scoreboard players add @s attackS-Lv 1
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 500
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 2 0 1
title @s subtitle [{"text":"combat level ->","color":"gold"},{"score":{"name":"@s","objective":"attackS-Lv"},"color":"gold"}]
title @s title {"text":"AttackSpd LV \u0020UP!!","underlined":true,"color":"red"}
tellraw @a [{"text": ""},{"text": "[System] ","color": "yellow"},{"selector":"@s","color": "white"},{"text": "の"},{"text": "attack speed Lv","color": "gold"},{"text": "が","color": "white"},{"score":{"name": "@s","objective": "attackS-Lv"}},{"text": "になった"}]
scoreboard players operation @s attackSxp -= @s needattackSxp
scoreboard players add @s needattackSxp 3
scoreboard players add @s[scores={attackS-Lv=30..}] needattackSxp 1
scoreboard players add @s[scores={attackS-Lv=35..}] needattackSxp 1
scoreboard players add @s[scores={attackS-Lv=50..}] needattackSxp 4
scoreboard players add @s[scores={attackS-Lv=55..}] needattackSxp 6
scoreboard players add @s[scores={attackS-Lv=60..}] needattackSxp 1
scoreboard players add @s[scores={attackS-Lv=70..}] needattackSxp 5
scoreboard players add @s[scores={attackS-Lv=75..}] needattackSxp 1
scoreboard players add @s[scores={attackS-Lv=90..}] needattackSxp 1
function mikatanserver:main/lvup/_lvset