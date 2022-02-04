tag @s add DungeonStart7
tag @s add CountLeader
tag @s add SevthDLeader
clear @s carrot_on_a_stick{CustomModelData:29} 1
tellraw @a ["",{"selector":"@s"},{"text":"が5s後に"},{"text": "","color": "red"},{"text":"未来の先に見据えるものは・・・","color":"green"},{"text":"を開始します\n参加者は","color":"white"},{"selector":"@s","color":"white"},{"text":"の","color":"white"},{"text":"5m以内","color":"red"},{"text":"に集まってください\n","color":"white"},{"text": "参加可能：AllLv120.."}]
scoreboard objectives add DungeonStartCnt7 minecraft.custom:minecraft.play_time
schedule function mikatanserver:adddim/dungeonmap_one/sevthdungeon/sleep 5t