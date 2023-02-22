tag @s add DungeonStart31
tag @s add CountLeader
tag @s add ThirtyoneDLeader
clear @s carrot_on_a_stick{CustomModelData:169} 1
data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text":"マグマキューブ大量発生！！","color":"red"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：AllLv40以上,volcanoエリアに移動済み"}]'
scoreboard players operation $clear ClearPer = $31_Clear ClearPer
scoreboard players operation $in ClearPer = $31 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
scoreboard players add $31 ClearPer 1
scoreboard objectives add DungeonStartCnt31 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/sleep 5t