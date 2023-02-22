tag @s add DungeonStart27
tag @s add CountLeader
tag @s add TwentysevenDLeader
clear @s carrot_on_a_stick{CustomModelData:137} 1
data modify storage mikatanserver:dungeon_chat dungeon_msg set value '[{"text":""},{"selector":"@s"},{"text":"が5s後に"},{"text": "【高難易度】","color": "red"},{"text":"その先の存在","color":"red"},{"text":"を開始します\\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください","color":"white"}]'
scoreboard players operation $clear ClearPer = $27_Clear ClearPer
scoreboard players operation $in ClearPer = $27 ClearPer
function mikatanserver:adddim/dungeonmap_one/_utils/print/check
scoreboard players add $27 ClearPer 1
scoreboard objectives add DungeonStartCnt27 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/sleep 5t