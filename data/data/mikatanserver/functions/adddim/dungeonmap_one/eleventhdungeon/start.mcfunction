tag @s add DungeonStart11
tag @s add CountLeader
tag @s add EleventhDLeader
clear @s carrot_on_a_stick{CustomModelData:49} 1
data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"その先に見えたもの","color":"green"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：All"}]'
scoreboard players operation $clear ClearPer = $11_Clear ClearPer
scoreboard players operation $in ClearPer = $11 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
scoreboard players add $11 ClearPer 1
scoreboard objectives add DungeonStartCnt11 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/sleep 5t