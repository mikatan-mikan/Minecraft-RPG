scoreboard players set @s MK.r.RandValue 2
function mikatanlib:rand/rand_exe

execute if score @s MK.r.RandValue matches 0 run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/maze/set_main_area
execute if score @s MK.r.RandValue matches 1 run function mikatanserver:adddim/dungeonmap_one/thirtythreedungeon/maze/set_load_area

scoreboard players add $33_dungeon_put maze 1