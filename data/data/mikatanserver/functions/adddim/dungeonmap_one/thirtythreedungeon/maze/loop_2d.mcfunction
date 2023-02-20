
execute in mikatanserver:dungeon as @e[tag=Dun33MazeMar] at @s run tp ~1 ~ 0.0
execute in mikatanserver:dungeon as @e[tag=Dun33CreateMar] at @s run tp ~12 ~ 2500


scoreboard players operation $y maze = $y_max maze
scoreboard players remove $x maze 1

schedule function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/maze/loop_1d 1t
