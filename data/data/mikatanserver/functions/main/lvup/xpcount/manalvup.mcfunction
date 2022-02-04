scoreboard players add @s mana-Lv 1
scoreboard players add @s manamax 1
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 500
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 2 0 1
title @s subtitle [{"text":"enchanting level ->","color":"brue"},{"score":{"name":"@s","objective":"mana-Lv"},"color":"brue"}]
title @s title {"text":"Mana LV \u0020UP!!","underlined":true,"color":"aqua"}
tellraw @a [{"text": ""},{"text": "[System] ","color": "yellow"},{"selector":"@s","color": "white"},{"text": "の"},{"text": "mana Lv","color": "blue"},{"text": "が","color": "white"},{"score":{"name": "@s","objective": "mana-Lv"}},{"text": "になった"}]
scoreboard players operation @s manaxp -= @s needmanaxp
scoreboard players add @s needmanaxp 1
scoreboard players add @s[scores={mana-Lv=10..}] needmanaxp 1
scoreboard players add @s[scores={mana-Lv=35..}] needmanaxp 1
scoreboard players add @s[scores={mana-Lv=50..}] needmanaxp 1
scoreboard players add @s[scores={mana-Lv=65..}] needmanaxp 3
scoreboard players add @s[scores={mana-Lv=80..}] needmanaxp 1
scoreboard players add @s[scores={mana-Lv=90..}] needmanaxp 1