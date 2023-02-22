execute if entity @e[tag=Goal,distance=..3] unless score @s TutorialFlag matches 2.. run function mikatanserver:adddim/area/tutorial/end
execute if entity @e[tag=Goal,distance=..3] if score @s TutorialFlag matches 2.. run function mikatanserver:adddim/area/tutorial/end2
execute if block ~ ~-1 ~ barrier run tp @s 5017.5 271 5016.5