tag @s add DungeonStart3
tag @s add CountLeader
tag @s add ThirdDLeader
clear @s carrot_on_a_stick{CustomModelData:13} 1
data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text":"洞窟の先に待つのは","color":"green"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：AllLv50以上"}]'
scoreboard players operation $clear ClearPer = $3_Clear ClearPer
scoreboard players operation $in ClearPer = $3 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
scoreboard players add $3 ClearPer 1
scoreboard objectives add DungeonStartCnt3 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/thirddungeon/sleep 5t