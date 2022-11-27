scoreboard players add @s QUEST_NETHER 1
function mikatanserver:adddim/area/_quest/nether/show_actionbar
execute if score @s QUEST_NETHER >= $200 int run function mikatanserver:adddim/area/_quest/nether/clear