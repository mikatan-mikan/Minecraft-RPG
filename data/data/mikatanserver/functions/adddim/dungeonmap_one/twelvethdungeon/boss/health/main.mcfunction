execute store result score @s MobNowHP run bossbar get twelvethboss_bar value
scoreboard players remove @s MobNowHP 2
execute store result bossbar twelvethboss_bar value run scoreboard players get @s MobNowHP
execute as @a[tag = BossBattle12] at @s run playsound block.glass.break master @s ~ ~ ~ 0.5 1
execute store result score @s TMP run scoreboard players get @s MobNowHP
scoreboard players operation @s TMP %= num HUNDRED
tellraw @a[tag = BossBattle12] [{"text": "[system]","color": "yellow"},{"text": "残りHP","color": "white"},{"score":{"name":"@s","objective":"MobNowHP"},"color":"light_purple"}]
kill @e[type=armor_stand , tag = BossAtkAr , distance = ..1.5]