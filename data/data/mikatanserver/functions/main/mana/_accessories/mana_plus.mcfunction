scoreboard players operation $accessories TMP = $mana TMP
scoreboard players operation $accessories TMP /= $50 int
execute if score $accessories TMP matches 6.. run scoreboard players set $accessories TMP 5
scoreboard players operation @s mana += $accessories TMP
execute if score @s mana > @s manamax run scoreboard players operation @s mana = @s manamax