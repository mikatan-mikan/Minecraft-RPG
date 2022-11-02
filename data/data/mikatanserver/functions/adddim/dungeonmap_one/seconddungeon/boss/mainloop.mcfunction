execute store result bossbar minecraft:secondboss_bar value run scoreboard players get @e[tag=SecondDunBoss,limit=1] mh.hp
execute as @e[tag=SecondDunBoss] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/bossmainhand
execute as @e[tag=SecondDunBoss] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/skillloop