scoreboard players operation @s TMP = @s SpecialSkillTimer
scoreboard players operation @s TMP %= $10 int

execute if score @s TMP matches 1 run playsound block.anvil.place master @a ~ ~ ~ 0.2 0.7