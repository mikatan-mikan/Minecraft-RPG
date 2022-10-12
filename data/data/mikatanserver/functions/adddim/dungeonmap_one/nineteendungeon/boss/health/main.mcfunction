execute store result score @s MobNowHP run bossbar get nineteenboss_bar value
scoreboard players remove @s MobNowHP 2
execute store result bossbar nineteenboss_bar value run scoreboard players get @s MobNowHP
execute as @a[tag = BossBattle19] at @s run playsound block.glass.break master @s ~ ~ ~ 0.5 1
execute store result score @s TMP run scoreboard players get @s MobNowHP
scoreboard players operation @s TMP %= num HUNDRED
execute if score @s TMP matches 0 run tellraw @a[tag = BossBattle19] [{"text": "[system]","color": "yellow"},{"text": "残りHP","color": "white"},{"score":{"name":"@s","objective":"MobNowHP"},"color":"light_purple"}]
execute if score @s MobNowHP matches ..0 run function mikatanserver:adddim/dungeonmap_one/nineteendungeon/true
kill @e[type=armor_stand , tag = BossAtkAr , distance = ..1.5]