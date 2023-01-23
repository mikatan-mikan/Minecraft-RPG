scoreboard players operation @s TMP = @s SpecialSkillTimer
scoreboard players operation @s TMP %= $8 int

execute if score @s TMP matches 1 run playsound block.bell.use master @a ~ ~ ~ 2 0.9