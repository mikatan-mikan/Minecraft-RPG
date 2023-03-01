tag @s add DungeonStart29
tag @s add CountLeader
tag @s add TwentynineDLeader
clear @s carrot_on_a_stick{CustomModelData:159} 1
data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text":"白銀の従者と刃","color":"red"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：AllLv5以上(レベリング可能:80未満)"}]'
scoreboard players operation $clear ClearPer = $29_Clear ClearPer
scoreboard players operation $in ClearPer = $29 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
scoreboard players add $29 ClearPer 1
scoreboard objectives add DungeonStartCnt29 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/sleep 5t