tag @s add DungeonStart3
tag @s add CountLeader
tag @s add ThirdDLeader
clear @s carrot_on_a_stick{CustomModelData:13} 1
tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "","color": "red"},{"text":"洞窟の先に待つのは","color":"green"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv50.."}]
scoreboard objectives add DungeonStartCnt3 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/thirddungeon/sleep 5t