tag @s add DungeonStart16
tag @s add CountLeader
tag @s add SixteenDLeader
clear @s carrot_on_a_stick{CustomModelData:77} 1
tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"その先に出した答え","color":"green"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv120.."}]
scoreboard objectives add DungeonStartCnt16 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/sixteendungeon/sleep 5t