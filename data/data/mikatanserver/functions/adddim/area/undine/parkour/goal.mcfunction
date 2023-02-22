scoreboard players operation @s TMP = @s ParkourTimer
scoreboard players operation $sec TMP = @s TMP
scoreboard players operation $sec TMP /= $20 int
scoreboard players operation $sec TMP /= $60 int
scoreboard players operation $min TMP = @s TMP
scoreboard players operation $min TMP /= $20 int
scoreboard players operation $min TMP %= $60 int
function mikatanserver:adddim/area/undine/parkour/set_rank
tellraw @s [{"text": "[system]","color": "yellow"},{"text": "パルクール終了！！","color": "green"},{"text": " 記録:","color": "red"},{"score":{"name": "$sec","objective": "TMP"},"color": "red"},{"text":":","color": "red"},{"score":{"name": "$min","objective": "TMP"},"color": "red"}]
function mikatanserver:adddim/area/undine/parkour/give_item
scoreboard players reset @s TMP
scoreboard players reset $sec TMP
scoreboard players reset $min TMP
tag @s remove UndineParkour
tag @s remove FieldParkour