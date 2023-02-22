tag @s add DungeonStart28
tag @s add CountLeader
tag @s add TwentyeightDLeader
clear @s carrot_on_a_stick{CustomModelData:138} 1
execute if score $28_Difficulty Temporary matches 0 run data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text":"夢の精と新たなお告げ","color":"red"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：AllLv40以上"}]'
execute if score $28_Difficulty Temporary matches 1 run data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"夢の精と新たなお告げ","color":"red"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：AllLv135以上"}]'
execute if score $28_Difficulty Temporary matches 0 run scoreboard players operation $clear ClearPer = $28_0_Clear ClearPer
execute if score $28_Difficulty Temporary matches 0 run scoreboard players operation $in ClearPer = $28_0 ClearPer
execute if score $28_Difficulty Temporary matches 1 run scoreboard players operation $clear ClearPer = $28_1_Clear ClearPer
execute if score $28_Difficulty Temporary matches 1 run scoreboard players operation $in ClearPer = $28_1 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
execute if score $28_Difficulty Temporary matches 0 run scoreboard players add $28_0 ClearPer 1
execute if score $28_Difficulty Temporary matches 1 run scoreboard players add $28_1 ClearPer 1
scoreboard objectives add DungeonStartCnt28 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/sleep 5t