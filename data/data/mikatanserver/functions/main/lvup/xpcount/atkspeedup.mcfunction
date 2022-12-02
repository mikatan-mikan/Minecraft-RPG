scoreboard players add @s attackS-Lv 1
execute unless score @s IsLvUpSound matches 1 run function mikatanserver:main/lvup/xpcount/_soundpar/main
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
scoreboard players add @s[scores={attackS-Lv=160..170}] needattackSxp 100
function mikatanserver:main/lvup/_lvset

execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:48}}]}] run xp add @s 35 levels
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:58}}]}] run xp add @s 40 levels


execute if score $NowMax AllLV > @s attackS-Lv if score @s attackSxp >= @s needattackSxp run function mikatanserver:main/lvup/xpcount/atkspeedup