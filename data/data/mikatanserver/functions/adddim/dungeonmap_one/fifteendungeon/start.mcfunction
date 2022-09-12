tag @s add DungeonStart15
tag @s add CountLeader
tag @s add FifteenDLeader
clear @s carrot_on_a_stick{CustomModelData:68} 1
tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"溶岩流から生まれるもの","color":"green"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：All"}]
scoreboard objectives add DungeonStartCnt15 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/fifteendungeon/sleep 5t