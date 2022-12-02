scoreboard players add @s luck-Lv 1
execute unless score @s IsLvUpSound matches 1 run function mikatanserver:main/lvup/xpcount/_soundpar/main
title @s subtitle [{"text":"farming level ->","color":"aqua"},{"score":{"name":"@s","objective":"luck-Lv"},"color":"aqua"}]
title @s title {"text":"Luck LV \u0020UP!!","underlined":true,"color":"green"}
tellraw @a [{"text": ""},{"text": "[System] ","color": "yellow"},{"selector":"@s","color": "white"},{"text": "の"},{"text": "luck Lv","color": "green"},{"text": "が","color": "white"},{"score":{"name": "@s","objective": "luck-Lv"}},{"text": "になった"}]
scoreboard players operation @s luckxp -= @s needluckxp
scoreboard players add @s needluckxp 2
execute as @s[scores={luck-Lv=10..}] run scoreboard players add @s needluckxp 1
execute as @s[scores={luck-Lv=25..}] run scoreboard players add @s needluckxp 1
execute as @s[scores={luck-Lv=50..}] run scoreboard players add @s needluckxp 1
execute as @s[scores={luck-Lv=65..}] run scoreboard players add @s needluckxp 3
execute as @s[scores={luck-Lv=70..}] run scoreboard players add @s needluckxp 1
execute as @s[scores={luck-Lv=90..}] run scoreboard players add @s needluckxp 1
execute as @s[scores={luck-Lv=110..}] run scoreboard players add @s needluckxp 5
execute as @s[scores={luck-Lv=140..}] run scoreboard players add @s needluckxp 5
execute as @s[scores={luck-Lv=160..170}] run scoreboard players add @s needluckxp 100
execute as @s[scores={luck-Lv=180..}] run scoreboard players add @s needluckxp 10
function mikatanserver:main/lvup/_lvset

execute if score $NowMax AllLV > @s luck-Lv if score @s luckxp >= @s needluckxp run function mikatanserver:main/lvup/xpcount/lucklvup