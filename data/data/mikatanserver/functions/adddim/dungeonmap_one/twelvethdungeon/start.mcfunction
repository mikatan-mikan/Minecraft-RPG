tag @s add DungeonStart12
tag @s add CountLeader
tag @s add TwelvethDLeader
clear @s carrot_on_a_stick{CustomModelData:53} 1
data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"とてもとても長い道","color":"green"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：All"}]'
scoreboard players operation $clear ClearPer = $12_Clear ClearPer
scoreboard players operation $in ClearPer = $12 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
scoreboard players add $12 ClearPer 1
scoreboard objectives add DungeonStartCnt12 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/sleep 5t