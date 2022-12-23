tag @s add DungeonStart25
tag @s add CountLeader
tag @s add TwentyfiveDLeader
clear @s carrot_on_a_stick{CustomModelData:135} 1
tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"聖杯 それは・・・","color":"yellow"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv150以上"}]
scoreboard objectives add DungeonStartCnt25 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/twentyfivedungeon/sleep 5t