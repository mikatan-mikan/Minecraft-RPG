tag @s add DungeonStart14
tag @s add CountLeader
tag @s add FourteenDLeader
clear @s carrot_on_a_stick{CustomModelData:66} 1
data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"略奪者を追いかけた先に","color":"green"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\\n","color":"white"},{"text": "参加可能：AllLv95以上,エンダークエストLv3以上"}]'
scoreboard players operation $clear ClearPer = $14_Clear ClearPer
scoreboard players operation $in ClearPer = $14 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
scoreboard players add $14 ClearPer 1
scoreboard objectives add DungeonStartCnt14 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/fourteendungeon/sleep 5t