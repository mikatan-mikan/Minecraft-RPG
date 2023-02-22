execute if score $in ClearPer matches 1.. unless score $clear ClearPer matches 1.. run scoreboard players set $clear ClearPer 0
execute if score $in ClearPer matches 1.. run function mikatanserver:adddim/dungeonmap_one/_utils/print/per/main
execute unless score $in ClearPer matches 1.. run tellraw @a [{"storage":"mikatanserver:dungeon_chat","nbt":"dungeon_msg","interpret": true},"   ",{"text":"クリア率","color":"yellow"},{"text": "：統計無し","color":"white"}]

scoreboard players reset $in ClearPer
scoreboard players reset $clear ClearPer
scoreboard players reset $mod_10 ClearPer