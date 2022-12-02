
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 1 1 1 1 500
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1.5 0 1
scoreboard players set @s IsLvUpSound 1
schedule function mikatanserver:main/lvup/xpcount/_soundpar/delete_flg 1t