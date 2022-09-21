#execute store result bossbar minecraft:eightteenboss_bar value run data get entity @e[tag=SeventeenDunBoss,limit=1] Health
execute store result bossbar minecraft:eightteenboss_bar value run scoreboard players get $18 BossHP
execute as @e[tag=EightteenDunBoss,limit=1,sort=random] run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/mainloop