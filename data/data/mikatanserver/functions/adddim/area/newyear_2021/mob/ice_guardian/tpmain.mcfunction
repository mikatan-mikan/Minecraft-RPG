execute unless entity @a[distance=..80] run tag @s add not_Pos
# execute if entity @a[distance=..5] positioned ~ ~2 ~ if entity @a[dz=10] run tag @s add not_Pos
execute unless block ~ ~ ~ air run tag @s add not_Pos