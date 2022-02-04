tag @s add DungeonStart8
tag @s add CountLeader
tag @s add EigthDLeader
clear @s carrot_on_a_stick{CustomModelData:30} 1
tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"それは訪れることのなかった光の先・・・","color":"green"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv140.."}]
scoreboard objectives add DungeonStartCnt8 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/eigthdungeon/sleep 5t