scoreboard players operation $bef_player_x NowPlaceX = @s NowPlaceX
scoreboard players operation $bef_player_y NowPlaceY = @s NowPlaceY

execute store result score @s NowPlaceX run data get entity @s Pos[0]
execute store result score @s NowPlaceY run data get entity @s Pos[2]

scoreboard players operation $bef_player_x NowPlaceX -= @s NowPlaceX
scoreboard players operation $bef_player_y NowPlaceY -= @s NowPlaceY

execute unless score NowPlaceX NowPlaceX matches -4..4 if score @s AFKCheck_elytra matches 1.. run scoreboard players reset @s AFKCheck
execute unless score NowPlaceY NowPlaceY matches -4..4 if score @s AFKCheck_elytra matches 1.. run scoreboard players reset @s AFKCheck

scoreboard players reset @s AFKCheck_elytra