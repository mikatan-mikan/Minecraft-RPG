tag @s add DungeonStart19
tag @s add CountLeader
tag @s add NineteenDLeader
clear @s carrot_on_a_stick{CustomModelData:97} 1
tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"別解","color":"green"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv130以上"}]
scoreboard objectives add DungeonStartCnt19 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/nineteendungeon/sleep 5t