scoreboard players add @s QUEST_RUINS 1
function mikatanserver:adddim/area/_quest/ruins/show_actionbar
execute if score @s QUEST_RUINS >= $100 int run function mikatanserver:adddim/area/_quest/ruins/clear