execute store result bossbar minecraft:secondboss_bar value run data get entity @e[tag=SecondDunBoss,limit=1] Health
execute as @e[tag=SecondDunBoss] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/bossmainhand
execute as @e[tag=SecondDunBoss] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/skillloop