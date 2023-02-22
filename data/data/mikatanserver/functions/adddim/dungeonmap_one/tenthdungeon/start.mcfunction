tag @s add DungeonStart10
tag @s add CountLeader
tag @s add TenthDLeader
clear @s carrot_on_a_stick{CustomModelData:45} 1
data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"<<波動>>","color":"gold"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：All"}]'
scoreboard players operation $clear ClearPer = $10_Clear ClearPer
scoreboard players operation $in ClearPer = $10 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
scoreboard players add $10 ClearPer 1
scoreboard objectives add DungeonStartCnt10 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/tenthdungeon/sleep 5t