tag @s add DungeonStart32
tag @s add CountLeader
tag @s add ThirtytwoDLeader
execute if score $32_Difficulty Temporary matches 0 run clear @s carrot_on_a_stick{CustomModelData:170,diff:0} 1
execute if score $32_Difficulty Temporary matches 1 run clear @s carrot_on_a_stick{CustomModelData:170,diff:1} 1
execute if score $32_Difficulty Temporary matches 2 run clear @s carrot_on_a_stick{CustomModelData:170,diff:2} 1
execute if score $32_Difficulty Temporary matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "","color": "red"},{"text":"反逆の新緑","color":"green"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv40以上"}]
execute if score $32_Difficulty Temporary matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【高難易度】","color": "red"},{"text":"反逆の新緑","color":"green"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv60以上"}]
execute if score $32_Difficulty Temporary matches 2 run tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"反逆の新緑","color":"green"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv170以上"}]
scoreboard objectives add DungeonStartCnt32 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/thirtytwodungeon/sleep 5t