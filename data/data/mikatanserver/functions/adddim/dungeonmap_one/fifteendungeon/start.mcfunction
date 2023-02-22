tag @s add DungeonStart15
tag @s add CountLeader
tag @s add FifteenDLeader
clear @s carrot_on_a_stick{CustomModelData:68} 1
data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"溶岩流から生まれるもの","color":"green"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：AllLv85以上,ネザークエストLv10以上"}]'
scoreboard players operation $clear ClearPer = $15_Clear ClearPer
scoreboard players operation $in ClearPer = $15 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
scoreboard players add $15 ClearPer 1
scoreboard objectives add DungeonStartCnt15 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/fifteendungeon/sleep 5t