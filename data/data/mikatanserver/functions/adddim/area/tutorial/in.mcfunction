tag @s add Tutorial
gamemode adventure @s
execute unless score @s TutorialFlag matches 1.. run function mikatanserver:adddim/area/tutorial/assets/give_item
execute in mikatanserver:dungeon run tp 5017.5 271 5016.5