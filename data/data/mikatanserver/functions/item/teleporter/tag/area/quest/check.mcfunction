execute if entity @s[tag=QUEST_PLAYER] run tellraw @s [{"text": "[system]","color": "yellow"},{"text": "クエストを破棄しました。","color": "red"}]
tag @s remove QUEST_ENDER
tag @s remove QUEST_NETHER
tag @s remove QUEST_PLAYER