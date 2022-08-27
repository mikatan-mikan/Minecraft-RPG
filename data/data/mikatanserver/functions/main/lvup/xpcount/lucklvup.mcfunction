scoreboard players add @s luck-Lv 1
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 500
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 2 0 1
title @s subtitle [{"text":"fishing level ->","color":"aqua"},{"score":{"name":"@s","objective":"luck-Lv"},"color":"aqua"}]
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
execute as @s[scores={luck-Lv=180..}] run scoreboard players add @s needluckxp 10
execute as @a[scores={luck-Lv=..100}] run function mikatanserver:main/lvup/luck/lv100_lv0/func
execute as @a[scores={luck-Lv=101..200}] run function mikatanserver:main/lvup/luck/lv200_lv101/func