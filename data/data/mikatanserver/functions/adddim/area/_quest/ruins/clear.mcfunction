tag @s remove QUEST_RUINS
tag @s remove QUEST_PLAYER
scoreboard players add @s QUEST_RUINS_LEVEL 1
scoreboard players reset @s QUEST_RUINS
function mikatanserver:adddim/area/_quest/ruins/reword/main
##LVUP演出
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 500
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 2 0 1
tellraw @s [{"text": "[system]","color": "yellow"},{"text": "クエストクリア！","color": "yellow"}]
tellraw @a [{"text": ""},{"text": "[System] ","color": "yellow"},{"selector":"@s","color": "white"},{"text": "の"},{"text": "\uE035","font":"add_fonts"},{"text":" Lv","color": "green"},{"text": "が","color": "white"},{"score":{"name": "@s","objective": "QUEST_RUINS_LEVEL"}},{"text": "になった"}]
