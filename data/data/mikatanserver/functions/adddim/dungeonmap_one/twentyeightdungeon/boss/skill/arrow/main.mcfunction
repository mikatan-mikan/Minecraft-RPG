
effect give @s resistance 4 4 true
effect give @s regeneration 3 2 true

data merge entity @s {NoAI:1b}

scoreboard players set @s SpecialSkillTimer 0

function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/arrow/skill/mainloop