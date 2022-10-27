tag @s add DungeonStart21
tag @s add CountLeader
tag @s add TwentyoneDLeader
clear @s carrot_on_a_stick{CustomModelData:104} 1
tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"重力の操縦者","color":"green"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：無し"}]
scoreboard objectives add DungeonStartCnt21 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/twentyonedungeon/sleep 5t