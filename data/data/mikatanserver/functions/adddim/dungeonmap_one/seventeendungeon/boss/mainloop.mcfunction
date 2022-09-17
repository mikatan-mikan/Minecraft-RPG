#execute store result bossbar minecraft:seventeenboss_bar value run data get entity @e[tag=SeventeenDunBoss,limit=1] Health
execute store result bossbar minecraft:seventeenboss_bar value run scoreboard players get $17 BossHP
execute as @e[tag=SeventeenDunBoss] run function mikatanserver:adddim/dungeonmap_one/seventeendungeon/boss/skill/mainloop