scoreboard players operation $num ClearPer = $clear ClearPer
scoreboard players operation $clear ClearPer *= $1000 int
scoreboard players operation $clear ClearPer /= $in ClearPer
scoreboard players operation $mod_10 ClearPer = $clear ClearPer
scoreboard players operation $mod_10 ClearPer %= $10 int
scoreboard players operation $clear ClearPer /= $10 int

execute if score $clear ClearPer matches ..9 run data merge storage mikatanserver:dungeon_chat {per:'[{"text":"  "},{"score":{"objective":"ClearPer","name":"$clear"}}]'}
execute if score $clear ClearPer matches 10..99 run data merge storage mikatanserver:dungeon_chat {per:'[{"text":" "},{"score":{"objective":"ClearPer","name":"$clear"}}]'}
execute if score $clear ClearPer matches 100.. run data merge storage mikatanserver:dungeon_chat {per:'[{"text":""},{"score":{"objective":"ClearPer","name":"$clear"}}]'}



tellraw @a [{"storage":"mikatanserver:dungeon_chat","nbt":"dungeon_msg","interpret": true},"   ",{"text":"クリア率","color":"yellow"},{"text":"："},{"storage":"mikatanserver:dungeon_chat","nbt":"per","interpret": true},{"text":"."},{"score":{"objective": "ClearPer","name":"$mod_10"}},{"text":"%"},{"text":" ("},{"score": {"objective":"ClearPer","name":"$num"}},{"text":"/"},{"score": {"objective":"ClearPer","name":"$in"}},{"text":")"}]