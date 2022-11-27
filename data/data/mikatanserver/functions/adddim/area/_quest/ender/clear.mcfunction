tag @s remove QUEST_ENDER
tag @s remove QUEST_PLAYER
scoreboard players add @s QUEST_ENDER_LEVEL 1
scoreboard players reset @s QUEST_ENDER
function mikatanserver:adddim/area/_quest/ender/reword/main
execute if entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:54},id:"minecraft:magma_cream"}]}] run xp add @s 20 levels
execute if entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:54,tier:2},id:"minecraft:magma_cream"}]}] run xp add @s 5 levels
##LVUP演出
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 500
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 2 0 1
tellraw @s [{"text": "[system]","color": "yellow"},{"text": "クエストクリア！","color": "yellow"}]
tellraw @a [{"text": ""},{"text": "[System] ","color": "yellow"},{"selector":"@s","color": "white"},{"text": "の"},{"text": "\uE021 Lv","color": "dark_purple"},{"text": "が","color": "white"},{"score":{"name": "@s","objective": "QUEST_ENDER_LEVEL"}},{"text": "になった"}]
