scoreboard players add @s QUEST_ENDER 1
function mikatanserver:adddim/area/_quest/ender/show_actionbar
execute if score @s QUEST_ENDER >= $200 int run function mikatanserver:adddim/area/_quest/ender/clear