execute store success score @s farmbool as @s at @s unless block ~ ~ ~ farmland run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air replace farmland
execute store success score @s farmbool_ as @s at @s if block ~ ~ ~ farmland run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace farmland


# tellraw @s [{"score":{"objective":"farmbool_","name": "@s"}},{"score":{"objective": "farmbool","name": "@s"}}]

execute if score @s farmbool matches 1 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 farmland replace farmland
execute if score @s farmbool matches 1 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 farmland replace air
execute if score @s farmbool_ matches 1 run fill ~-1 ~ ~-1 ~1 ~ ~1 farmland replace farmland
execute if score @s farmbool_ matches 1 run fill ~-1 ~ ~-1 ~1 ~ ~1 farmland replace air

execute as @s at @s unless block ~ ~ ~ farmland run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 farmland replace #mikatanserver:change_farm
execute as @s at @s unless block ~ ~ ~ farmland run fill ~-1 ~ ~-1 ~1 ~ ~1 potatoes replace minecraft:air
##農地なら
execute as @s at @s if block ~ ~ ~ farmland run fill ~-1 ~ ~-1 ~1 ~ ~1 farmland replace #mikatanserver:change_farm
execute as @s at @s if block ~ ~ ~ farmland run fill ~-1 ~1 ~-1 ~1 ~1 ~1 potatoes replace minecraft:air

execute store result score @s backpotatocount as @s at @s run kill @e[type=item,nbt={Item:{id:"minecraft:potato"}},distance=..3]

execute if score @s backpotatocount matches 1 run give @s potato 1
execute if score @s backpotatocount matches 2 run give @s potato 2
execute if score @s backpotatocount matches 3 run give @s potato 3
execute if score @s backpotatocount matches 4 run give @s potato 4
execute if score @s backpotatocount matches 5 run give @s potato 5
execute if score @s backpotatocount matches 6 run give @s potato 6
execute if score @s backpotatocount matches 7 run give @s potato 7
execute if score @s backpotatocount matches 8 run give @s potato 8
execute if score @s backpotatocount matches 9 run give @s potato 9
execute if score @s backpotatocount matches 10 run give @s potato 10
execute if score @s backpotatocount matches 11 run give @s potato 11
execute if score @s backpotatocount matches 12 run give @s potato 12
execute if score @s backpotatocount matches 13 run give @s potato 13
execute if score @s backpotatocount matches 14.. run give @s potato 14

scoreboard players set @s farmbool 0
scoreboard players set @s farmbool_ 0