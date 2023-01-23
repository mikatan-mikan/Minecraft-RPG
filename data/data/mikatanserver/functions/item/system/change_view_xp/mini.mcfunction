scoreboard players operation @s TMP = @s MiniUI
execute unless score @s TMP matches 1 run scoreboard players set @s MiniUI 1
execute if score @s TMP matches 1 run scoreboard players set @s MiniUI 0

playsound entity.player.levelup master @s ~ ~ ~ 1 2 