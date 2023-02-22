tag @s add DungeonStart5
tag @s add CountLeader
tag @s add FifthDLeader
clear @s carrot_on_a_stick{CustomModelData:18} 1
data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text":"そこにあるもの","color":"green"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：AllLv75以上"}]'
scoreboard players operation $clear ClearPer = $5_Clear ClearPer
scoreboard players operation $in ClearPer = $5 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
scoreboard players add $5 ClearPer 1
scoreboard objectives add DungeonStartCnt5 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/fifthdungeon/sleep 5t