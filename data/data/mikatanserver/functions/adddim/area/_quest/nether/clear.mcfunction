tag @s remove QUEST_NETHER
tag @s remove QUEST_PLAYER
scoreboard players add @s QUEST_NETHER_LEVEL 1
scoreboard players reset @s QUEST_NETHER
function mikatanserver:adddim/area/_quest/nether/reword/main
##LVUP演出
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 500
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 2 0 1
tellraw @s [{"text": "[system]","color": "yellow"},{"text": "クエストクリア！","color": "yellow"}]
tellraw @a [{"text": ""},{"text": "[System] ","color": "yellow"},{"selector":"@s","color": "white"},{"text": "の"},{"text": "\uE034 Lv","color": "red"},{"text": "が","color": "white"},{"score":{"name": "@s","objective": "QUEST_NETHER_LEVEL"}},{"text": "になった"}]