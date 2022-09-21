tag @s add DungeonStart17
tag @s add CountLeader
tag @s add SeventeenDLeader
clear @s carrot_on_a_stick{CustomModelData:86} 1
tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"その奇跡は軌跡を描いて","color":"red"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv125以上"}]
scoreboard objectives add DungeonStartCnt17 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/seventeendungeon/sleep 5t