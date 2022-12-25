execute store result bossbar minecraft:twentysevenboss_bar value run scoreboard players get @e[tag=TwentysevenDunBoss,limit=1] mh.hp
execute as @e[tag=TwentysevenDunBoss] run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/boss/bossmainhand
execute as @e[tag=TwentysevenDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/boss/skillloop