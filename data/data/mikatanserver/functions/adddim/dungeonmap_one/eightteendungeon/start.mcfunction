tag @s add DungeonStart18
tag @s add CountLeader
tag @s add EightteenDLeader
clear @s carrot_on_a_stick{CustomModelData:87} 1
data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"\\"めがみ\\"と\\"めがみ\\"？","color":"red"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：AllLv135以上"}]'
scoreboard players operation $clear ClearPer = $18_Clear ClearPer
scoreboard players operation $in ClearPer = $18 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
scoreboard players add $18 ClearPer 1
scoreboard objectives add DungeonStartCnt18 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/eightteendungeon/sleep 5t

# data modify storage mikatanserver:dungeon_chat main set value [{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"\\"めがみ\\"と\\"めがみ\\"？","color":"red"},{"text":"を開始します\\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\\n","color":"white"},{"text": "参加可能：AllLv135以上"}]