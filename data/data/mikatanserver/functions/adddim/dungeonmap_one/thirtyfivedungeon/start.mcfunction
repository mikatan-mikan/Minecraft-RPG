tag @s add DungeonStart35
tag @s add CountLeader
tag @s add ThirtyfiveDLeader
clear @s carrot_on_a_stick{CustomModelData:180} 1
data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text":"金色の従者と鎌","color":"red"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：AllLv80以上,翠創杖を作成済みである(レベリング可能:110未満)"}]'
scoreboard players operation $clear ClearPer = $35_Clear ClearPer
scoreboard players operation $in ClearPer = $35 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
scoreboard players add $35 ClearPer 1
scoreboard objectives add DungeonStartCnt35 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/sleep 5t