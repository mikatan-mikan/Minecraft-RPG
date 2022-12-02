scoreboard players add @s hp-Lv 1
execute unless score @s IsLvUpSound matches 1 run function mikatanserver:main/lvup/xpcount/_soundpar/main
title @s subtitle [{"text":"trade level ->","color":"green"},{"score":{"name":"@s","objective":"hp-Lv"},"color":"green"}]
title @s title {"text":"hp LV \u0020UP!!","underlined":true,"color":"light_purple"}
tellraw @a [{"text": ""},{"text": "[System] ","color": "yellow"},{"selector":"@s","color": "white"},{"text": "の"},{"text": "hp Lv","color": "light_purple"},{"text": "が","color": "white"},{"score":{"name": "@s","objective": "hp-Lv"}},{"text": "になった"}]
scoreboard players operation @s hpxp -= @s needhpxp
scoreboard players add @s needhpxp 2
execute as @s[scores={hp-Lv=10..}] run scoreboard players add @s needhpxp 1
execute as @s[scores={hp-Lv=15..}] run scoreboard players add @s needhpxp 4
execute as @s[scores={hp-Lv=30..}] run scoreboard players add @s needhpxp 1
execute as @s[scores={hp-Lv=45..}] run scoreboard players add @s needhpxp 1
execute as @s[scores={hp-Lv=60..}] run scoreboard players add @s needhpxp 1
execute as @s[scores={hp-Lv=70..}] run scoreboard players add @s needhpxp 1
execute as @s[scores={hp-Lv=120..}] run scoreboard players add @s needhpxp 4
function mikatanserver:main/lvup/_lvset

execute if score $NowMax AllLV > @s hp-Lv if score @s hpxp >= @s needhpxp run function mikatanserver:main/lvup/xpcount/healthlvup