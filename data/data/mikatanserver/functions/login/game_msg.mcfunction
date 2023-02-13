execute if score @s FirstChatFlag matches 1 run function mikatanserver:login/game_page/1
execute if score @s FirstChatFlag matches 2 run function mikatanserver:login/game_page/2
execute if score @s FirstChatFlag matches 3 run function mikatanserver:login/game_page/3

data remove storage mikatanserver:chat Bool
data remove storage mikatanserver:chat Check

scoreboard players reset @s FirstChatFlag