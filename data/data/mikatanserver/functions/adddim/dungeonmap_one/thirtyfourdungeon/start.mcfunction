tag @s add DungeonStart34
tag @s add CountLeader
tag @s add ThirtyfourDLeader
tag @a remove DungeonCaller34
tag @s add DungeonCaller34
clear @s carrot_on_a_stick{CustomModelData:178} 1
data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text": "【絶高難易度】","color": "red"},{"text":"<<水の精霊と青の大地>>","color":"gold"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：AllLv200以上,実績ポイント7000以上"}]'
scoreboard players operation $clear ClearPer = $34_Clear ClearPer
scoreboard players operation $in ClearPer = $34 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
scoreboard players add $34 ClearPer 1
scoreboard objectives add DungeonStartCnt34 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/thirtyfourdungeon/sleep 5t