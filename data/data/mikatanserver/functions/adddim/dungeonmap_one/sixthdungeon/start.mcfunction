tag @s add DungeonStart6
tag @s add CountLeader
tag @s add SixthDLeader
scoreboard objectives add PheseManeger_6 dummy
clear @s carrot_on_a_stick{CustomModelData:19} 1
tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"記憶の奥底に・・・","color":"green"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv90.."}]
scoreboard objectives add DungeonStartCnt6 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/sixthdungeon/sleep 50t