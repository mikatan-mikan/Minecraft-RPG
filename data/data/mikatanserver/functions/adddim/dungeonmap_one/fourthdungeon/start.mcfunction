tag @s add DungeonStart4
tag @s add CountLeader
tag @s add FourthDLeader
clear @s carrot_on_a_stick{CustomModelData:14} 1
tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【高難易度】","color": "red"},{"text":"その輝きは彗星の如き・・・","color":"green"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv60.."}]
scoreboard objectives add DungeonStartCnt4 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/fourthdungeon/sleep 5t