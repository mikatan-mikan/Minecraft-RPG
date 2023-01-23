execute if predicate mikatanserver:chance/0.1 run function mikatanserver:item/specialskill/red/skill/red_par1
execute if predicate mikatanserver:chance/0.01 run function mikatanserver:item/specialskill/red/skill/red_par2
execute if predicate mikatanserver:chance/0.01 run function mikatanserver:item/specialskill/red/skill/red_par3
##ヒット検知
execute positioned ~ ~-1.0 ~ as @e[type=#mikatanserver:mobs,distance=..1] run function mikatanserver:item/specialskill/red/skill/_hit 
# execute positioned ~ ~-1.5 ~ as @e[type=#mikatanserver:mobs,distance=..0.6] run function mikatanserver:item/specialskill/red/skill/_hit 
# execute positioned ~ ~-1.5 ~ unless entity @e[type=#mikatanserver:mobs,distance=..0.6] positioned ~ ~0.5 ~ as @e[type=#mikatanserver:mobs,distance=..0.6] run function mikatanserver:item/specialskill/red/skill/_hit 
# execute positioned ~ ~-1.5 ~ unless entity @e[type=#mikatanserver:mobs,distance=..0.6] positioned ~ ~0.5 ~ unless entity @e[type=#mikatanserver:mobs,distance=..0.6] positioned ~ ~1.0 ~ as @e[type=#mikatanserver:mobs,distance=..0.6] run function mikatanserver:item/specialskill/red/skill/_hit 
# execute positioned ~ ~-1.5 ~ unless entity @e[type=#mikatanserver:mobs,distance=..0.6] positioned ~ ~0.5 ~ unless entity @e[type=#mikatanserver:mobs,distance=..0.6] positioned ~ ~1.0 ~ unless entity @e[type=#mikatanserver:mobs,distance=..0.6] positioned ~ ~1.5 ~ as @e[type=#mikatanserver:mobs,distance=..0.6] run function mikatanserver:item/specialskill/red/skill/_hit 

tp ^ ^ ^0.5
scoreboard players add @s SpecialSkillTimer 1
execute if score @s SpecialSkillTimer matches 50.. run kill @s
execute unless score @s SpecialSkillTimer matches 50.. at @s run function mikatanserver:item/specialskill/red/skill/beamloop