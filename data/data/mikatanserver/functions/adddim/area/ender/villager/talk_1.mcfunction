scoreboard players set @s EnderVillagerFlag 0
tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "やぁ","color": "white"}]
playsound entity.villager.yes master @s ~ ~ ~ 1 1
advancement grant @p only mikatanserver:event/ender/visit_village