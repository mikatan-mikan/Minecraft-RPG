scoreboard players set @s QUEST_RUINS 0
execute unless score @s QUEST_RUINS_LEVEL matches 1.. run scoreboard players set @s QUEST_RUINS_LEVEL 0
##このタグを持っていると.../_quest/check/mainに跳ぶ
tag @s add QUEST_RUINS
tag @s add QUEST_PLAYER
clear @s minecraft:paper{ruins_quest:true}
tellraw @s [{"text": "[system]","color": "yellow"},{"text": "クエストを開始します...","color": "red"}]
particle witch ~ ~ ~ 0.5 0.5 0.5 1 50