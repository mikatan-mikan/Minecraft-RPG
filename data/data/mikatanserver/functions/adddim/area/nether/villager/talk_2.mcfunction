scoreboard players set @s VillagerFlag 0
tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "どこから来たんだね？","color": "white"}]
playsound entity.villager.yes master @s ~ ~ ~ 1 1
advancement grant @p only mikatanserver:event/nether/visit_village