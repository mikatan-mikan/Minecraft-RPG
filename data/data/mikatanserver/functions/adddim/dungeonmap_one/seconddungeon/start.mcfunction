tag @s add DungeonStart2
tag @s add CountLeader
tag @s add SecondDLeader
clear @s carrot_on_a_stick{CustomModelData:11} 1
data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text": "【高難易度】","color": "red"},{"text":"その先にあるものは","color":"green"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください","color":"white"}]'
scoreboard players operation $clear ClearPer = $2_Clear ClearPer
scoreboard players operation $in ClearPer = $2 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
scoreboard players add $2 ClearPer 1
scoreboard objectives add DungeonStartCnt2 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/seconddungeon/sleep 5t