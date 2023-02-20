
execute in mikatanserver:dungeon as @e[tag=33_BlockMazeAr] at @s run tp ~1 ~ 0.0

data modify storage mikatanserver:maze 33_readline set from storage mikatanserver:maze 33_out[-1]
# tellraw @a {"storage":"mikatanserver:maze","nbt":"readline"}
data remove storage mikatanserver:maze 33_out[-1]

function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/_set_maze/set_block_line
