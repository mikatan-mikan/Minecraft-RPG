#execute store result bossbar minecraft:season2boss_bar value run data get entity @e[tag=SeventeenDunBoss,limit=1] Health
execute store result bossbar minecraft:season2boss_bar value run scoreboard players get $season2 BossHP
execute as @e[tag=season2DunBoss,limit=1,sort=random] run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/mainloop