scoreboard players operation @s TMP = @s PlayerUIMode
execute unless score @s TMP matches 1 run scoreboard players set @s PlayerUIMode 1
execute if score @s TMP matches 1 run scoreboard players set @s PlayerUIMode 0

playsound entity.player.levelup master @s ~ ~ ~ 1 2 