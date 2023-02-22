tag @s add DungeonStart24
tag @s add CountLeader
tag @s add TwentyfourDLeader
clear @s carrot_on_a_stick{CustomModelData:123} 1
execute if score $24_Difficulty Temporary matches 0 run data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text":"その存在は未知なる旋律を奏でて","color":"aqua"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：AllLv180以上,実績ポイント6000以上"}]'
execute if score $24_Difficulty Temporary matches 1 run data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text": "【高難易度】","color": "red"},{"text":"その存在は未知なる旋律を奏でて","color":"aqua"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：AllLv180以上,実績ポイント6000以上"}]'
execute if score $24_Difficulty Temporary matches 2 run data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"その存在は未知なる旋律を奏でて","color":"aqua"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：AllLv180以上,実績ポイント6000以上"}]'
execute if score $24_Difficulty Temporary matches 4 run data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text": "【絶高難易度】","color": "red"},{"text":"その存在は未知なる旋律を奏でて","color":"aqua"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：AllLv180以上,実績ポイント6000以上"}]'

execute if score $24_Difficulty Temporary matches 0 run scoreboard players operation $clear ClearPer = $24_0_Clear ClearPer
execute if score $24_Difficulty Temporary matches 0 run scoreboard players operation $in ClearPer = $24_0 ClearPer
execute if score $24_Difficulty Temporary matches 1 run scoreboard players operation $clear ClearPer = $24_1_Clear ClearPer
execute if score $24_Difficulty Temporary matches 1 run scoreboard players operation $in ClearPer = $24_1 ClearPer
execute if score $24_Difficulty Temporary matches 2 run scoreboard players operation $clear ClearPer = $24_2_Clear ClearPer
execute if score $24_Difficulty Temporary matches 2 run scoreboard players operation $in ClearPer = $24_2 ClearPer
execute if score $24_Difficulty Temporary matches 3 run scoreboard players operation $clear ClearPer = $24_3_Clear ClearPer
execute if score $24_Difficulty Temporary matches 3 run scoreboard players operation $in ClearPer = $24_3 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
execute if score $24_Difficulty Temporary matches 0 run scoreboard players add $24_0 ClearPer 1
execute if score $24_Difficulty Temporary matches 1 run scoreboard players add $24_1 ClearPer 1
execute if score $24_Difficulty Temporary matches 2 run scoreboard players add $24_2 ClearPer 1
execute if score $24_Difficulty Temporary matches 3 run scoreboard players add $24_3 ClearPer 1
scoreboard objectives add DungeonStartCnt24 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/twentyfourdungeon/sleep 5t