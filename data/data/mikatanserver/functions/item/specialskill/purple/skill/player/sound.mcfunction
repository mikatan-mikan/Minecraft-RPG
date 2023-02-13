scoreboard players operation @s TMP = @s SpecialSkillTimer
scoreboard players operation @s TMP %= $8 int

execute if score @s TMP matches 1 run playsound block.anvil.place master @a ~ ~ ~ 0.4 0.4

execute if score @s SpecialSkillTimer matches 80.. run tag @s remove SpecialSkill.Purple