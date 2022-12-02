
execute store result score $24_Difficulty Temporary run data get entity @s SelectedItem.tag.diff
execute if score $24_Difficulty Temporary matches 0 if score @s AllLV matches 20.. run function mikatanserver:item/teleporter/dungeon/twentyfour/init
execute if score $24_Difficulty Temporary matches 1 if score @s AllLV matches 75.. run function mikatanserver:item/teleporter/dungeon/twentyfour/init
execute if score $24_Difficulty Temporary matches 2 if score @s AllLV matches 145.. run function mikatanserver:item/teleporter/dungeon/twentyfour/init
execute if score $24_Difficulty Temporary matches 3 if score @s AllLV matches 180.. if score @s RewardPoint matches 6000.. run function mikatanserver:item/teleporter/dungeon/twentyfour/init