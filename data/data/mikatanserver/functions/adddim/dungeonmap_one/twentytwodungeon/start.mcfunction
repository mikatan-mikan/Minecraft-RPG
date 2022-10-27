tag @s add DungeonStart22
tag @s add CountLeader
tag @s add TwentytwoDLeader
clear @s carrot_on_a_stick{CustomModelData:105} 1
tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【絶高難易度】","color": "red"},{"text":"<<波動>>","color":"gold"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv170以上,実績ポイント5000以上"}]
scoreboard objectives add DungeonStartCnt22 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/twentytwodungeon/sleep 5t