scoreboard players add @s mana 3
execute if score @s mana > @s manamax run scoreboard players operation @s mana = @s manamax
advancement grant @s only mikatanserver:event/halloween/eat_orange
advancement revoke @s only mikatanserver:judge/item/foods/gold_orange