tag @s add DungeonStart20
tag @s add CountLeader
tag @s add TwentyDLeader
clear @s carrot_on_a_stick{CustomModelData:102} 1
tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"巫は夕霧を従えて","color":"green"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv150以上,実績ポイント3500以上"}]
scoreboard objectives add DungeonStartCnt20 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/twentydungeon/sleep 5t