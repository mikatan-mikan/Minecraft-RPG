tag @s add DungeonStart30
tag @s add CountLeader
tag @s add ThirtyDLeader
tag @a remove DungeonCaller30
tag @s add DungeonCaller30
clear @s carrot_on_a_stick{CustomModelData:164} 1
tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【絶高難易度】","color": "red"},{"text":"<<炎の精霊と赤の大地>>","color":"gold"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv200以上,実績ポイント7000以上"}]
scoreboard objectives add DungeonStartCnt30 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/thirtydungeon/sleep 5t