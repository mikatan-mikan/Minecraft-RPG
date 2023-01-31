tag @s add DungeonStartseason2
tag @s add CountLeader
tag @s add season2DLeader
scoreboard players reset $season2_boss dungeon_play_now
clear @s carrot_on_a_stick{CustomModelData:138} 1
scoreboard players add $season2_play ClearPer 1
tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "【聖高難易度】","color": "red"},{"text":"巫天編","color":"red"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv150以上"}]
scoreboard objectives add DungeonStartCntseason2 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeon_season/season2dungeon/sleep 5t