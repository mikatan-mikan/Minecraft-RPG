execute if score @s FirstChatFlag matches 1 run function mikatanserver:login/game_page/1
execute if score @s FirstChatFlag matches 2 run function mikatanserver:login/game_page/2
execute if score @s FirstChatFlag matches 3 run function mikatanserver:login/game_page/3
execute if score @s FirstChatFlag matches 2000000000 run function mikatanserver:login/mark_change/_page
execute if score @s FirstChatFlag matches 2000000001..2010000000 run function mikatanserver:login/mark_change/change
execute if score @s FirstChatFlag matches 2147483647 unless entity @s[nbt={Inventory:[{id:"minecraft:iron_ore"}]}] run function mikatanserver:adddim/area/tutorial/in
execute if score @s FirstChatFlag matches 2147483647 if entity @s[nbt={Inventory:[{id:"minecraft:iron_ore"}]}] run tellraw @s [{"text":"[system]","color": "yellow"},{"text": "minecraft:iron_oreを持った状態でチュートリアルを開始できません","color":"red"}]

data remove storage mikatanserver:chat Bool
data remove storage mikatanserver:chat Check

scoreboard players reset @s FirstChatFlag