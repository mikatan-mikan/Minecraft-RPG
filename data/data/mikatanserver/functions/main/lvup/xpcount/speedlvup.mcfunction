scoreboard players add @s speed-Lv 1
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 500
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 2 0 1
title @s subtitle [{"text":"mining level ->","color":"yellow"},{"score":{"name":"@s","objective":"speed-Lv"},"color":"yellow"}]
title @s title {"text":"Speed LV \u0020UP!!","underlined":true,"color":"aqua"}
tellraw @a [{"text": ""},{"text": "[System] ","color": "yellow"},{"selector":"@s","color": "white"},{"text": "の"},{"text": "speed Lv","color": "aqua"},{"text": "が","color": "white"},{"score":{"name": "@s","objective": "speed-Lv"}},{"text": "になった"}]
scoreboard players operation @s speedxp -= @s needspeedxp
scoreboard players add @s needspeedxp 50
scoreboard players add @s[scores={speed-Lv=50..}] needspeedxp 25
execute as @a[scores={speed-Lv=..100}] run function mikatanserver:main/lvup/speed/lv100_lv0/func
execute as @a[scores={speed-Lv=101..200}] run function mikatanserver:main/lvup/speed/lv200_lv101/func