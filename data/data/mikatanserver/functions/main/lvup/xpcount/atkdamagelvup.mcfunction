scoreboard players add @s attackD-Lv 1
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 500
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 2 0 1
title @s subtitle [{"text":"foraging level ->","color":"green"},{"score":{"name":"@s","objective":"attackD-Lv"},"color":"gold"}]
title @s title {"text":"AttackDmg LV \u0020UP!!","underlined":true,"color":"red"}
tellraw @a [{"text": ""},{"text": "[System] ","color": "yellow"},{"selector":"@s","color": "white"},{"text": "の"},{"text": "attack damage Lv","color": "red"},{"text": "が","color": "white"},{"score":{"name": "@s","objective": "attackD-Lv"}},{"text": "になった"}]
scoreboard players operation @s attackDxp -= @s needattackDxp
scoreboard players add @s needattackDxp 7
scoreboard players add @s[scores={attackD-Lv=10..}] needattackDxp 2
scoreboard players add @s[scores={attackD-Lv=25..}] needattackDxp 2
scoreboard players add @s[scores={attackD-Lv=45..}] needattackDxp 1
scoreboard players add @s[scores={attackD-Lv=75..}] needattackDxp 1
scoreboard players add @s[scores={attackD-Lv=90..}] needattackDxp 1
function mikatanserver:main/lvup/_lvset

##アクセサリー
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:34}}]}] run xp add @s 25 levels
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:35}}]}] run xp add @s 30 levels
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:48}}]}] run xp add @s 35 levels