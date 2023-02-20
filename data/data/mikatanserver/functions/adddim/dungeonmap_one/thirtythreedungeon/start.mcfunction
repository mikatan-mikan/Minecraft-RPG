# function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/start
tag @s add DungeonStart33
tag @s add CountLeader
tag @s add ThirtythreeDLeader
execute if score $33_Difficulty Temporary matches 0 run clear @s carrot_on_a_stick{CustomModelData:173,diff:0} 1
execute if score $33_Difficulty Temporary matches 1 run clear @s carrot_on_a_stick{CustomModelData:173,diff:1} 1
execute if score $33_Difficulty Temporary matches 0 run tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【高難易度】","color": "red"},{"text":"深海の支配者","color":"aqua"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv100以上"}]
execute if score $33_Difficulty Temporary matches 1 run tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【超高難易度】","color": "red"},{"text":"深海の支配者","color":"aqua"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv190以上"}]
scoreboard objectives add DungeonStartCnt33 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/sleep 5t

data merge storage mikatanserver:maze {size:[4,4]}

execute in mikatanserver:dungeon run forceload add 0 0 16 16
execute in mikatanserver:dungeon run forceload add -2500 2500 -2400 2600
schedule function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/_set_maze/call 50t