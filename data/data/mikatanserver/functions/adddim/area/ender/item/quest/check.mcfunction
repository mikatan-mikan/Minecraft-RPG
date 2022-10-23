scoreboard players set @s QUEST_ENDER 0
execute unless score @s QUEST_ENDER_LEVEL matches 1.. run scoreboard players set @s QUEST_ENDER_LEVEL 0
##このタグを持っていると.../_quest/check/mainに跳ぶ
tag @s add QUEST_ENDER
tag @s add QUEST_PLAYER
clear @s minecraft:paper{ender_quest:true}
tellraw @s [{"text": "[system]","color": "yellow"},{"text": "クエストを開始します...","color": "red"}]
particle witch ~ ~ ~ 0.5 0.5 0.5 1 50