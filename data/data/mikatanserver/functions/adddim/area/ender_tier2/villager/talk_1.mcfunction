scoreboard players set @s VillagerFlag 0
tellraw @s [{"text": "[村人]","color": "yellow"},{"text": "やぁ・・・そろそろ終わりだね・・・","color": "white"}]
playsound entity.villager.yes master @s ~ ~ ~ 1 1
advancement grant @p only mikatanserver:event/ender_tier2/visit_village