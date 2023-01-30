tag @s add DungeonStart29
tag @s add CountLeader
tag @s add TwentynineDLeader
clear @s carrot_on_a_stick{CustomModelData:159} 1
tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "","color": "red"},{"text":"白銀の従者と刃","color":"red"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv5以上"}]
scoreboard objectives add DungeonStartCnt29 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/sleep 5t