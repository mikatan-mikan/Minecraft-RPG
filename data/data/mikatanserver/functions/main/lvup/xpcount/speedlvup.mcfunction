scoreboard players add @s speed-Lv 1
execute unless score @s IsLvUpSound matches 1 run function mikatanserver:main/lvup/xpcount/_soundpar/main
title @s subtitle [{"text":"mining level ->","color":"yellow"},{"score":{"name":"@s","objective":"speed-Lv"},"color":"yellow"}]
title @s title {"text":"Speed LV \u0020UP!!","underlined":true,"color":"aqua"}
tellraw @a [{"text": ""},{"text": "[System] ","color": "yellow"},{"selector":"@s","color": "white"},{"text": "の"},{"text": "speed Lv","color": "aqua"},{"text": "が","color": "white"},{"score":{"name": "@s","objective": "speed-Lv"}},{"text": "になった"}]
scoreboard players operation @s speedxp -= @s needspeedxp
scoreboard players add @s needspeedxp 50
scoreboard players add @s[scores={speed-Lv=50..}] needspeedxp 25
function mikatanserver:main/lvup/_lvset

execute if score $NowMax AllLV > @s speed-Lv if score @s speedxp >= @s needspeedxp run function mikatanserver:main/lvup/xpcount/speedlvup