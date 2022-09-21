scoreboard players set @s manachargercount 0
execute if score @s manamax > @s mana run scoreboard players add @s mana 1
execute if entity @s[nbt={SelectedItem:{tag:{manacharger:[2]}}},predicate=mikatanserver:chance/0.20] if score @s manamax > @s mana run scoreboard players add @s mana 1
execute if entity @s[nbt={SelectedItem:{tag:{manacharger:[3]}}},predicate=mikatanserver:chance/0.40] if score @s manamax > @s mana run scoreboard players add @s mana 1