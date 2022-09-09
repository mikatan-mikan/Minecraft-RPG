execute store result score @s MobNowHP run bossbar get sixteenboss_bar value
scoreboard players remove @s MobNowHP 2
execute store result bossbar sixteenboss_bar value run scoreboard players get @s MobNowHP
execute as @a[tag = BossBattle16] at @s run playsound block.glass.break master @s ~ ~ ~ 0.5 1
execute store result score @s TMP run scoreboard players get @s MobNowHP
scoreboard players operation @s TMP %= %100 int
execute if score @s TMP matches 0 run tellraw @a[tag = BossBattle16] [{"text": "[system]","color": "yellow"},{"text": "残りHP","color": "white"},{"score":{"name":"@s","objective":"MobNowHP"},"color":"light_purple"}]
execute if score @s MobNowHP matches ..0 run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/true
kill @e[type=armor_stand , tag = BossAtkAr , distance = ..1.5]