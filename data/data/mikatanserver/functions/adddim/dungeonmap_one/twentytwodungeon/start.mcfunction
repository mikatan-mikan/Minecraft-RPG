tag @s add DungeonStart22
tag @s add CountLeader
tag @s add TwentytwoDLeader
clear @s carrot_on_a_stick{CustomModelData:105} 1
data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text": "【絶高難易度】","color": "red"},{"text":"<<波動>>","color":"gold"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：AllLv170以上,実績ポイント5000以上"}]'
scoreboard players operation $clear ClearPer = $22_Clear ClearPer
scoreboard players operation $in ClearPer = $22 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
scoreboard players add $22 ClearPer 1
scoreboard objectives add DungeonStartCnt22 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/sleep 5t