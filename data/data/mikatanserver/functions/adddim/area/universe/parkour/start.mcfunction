tag @s add UniverseParkour
tag @s add FieldParkour
scoreboard players set @s Delay 20
scoreboard players set @s IsElytra 0
tellraw @s [{"text": "[system]","color": "yellow"},{"text": "パルクールを開始します"}]
scoreboard players set @s ParkourTimer 0
playsound ui.button.click master @s ~ ~ ~ 1 0.7