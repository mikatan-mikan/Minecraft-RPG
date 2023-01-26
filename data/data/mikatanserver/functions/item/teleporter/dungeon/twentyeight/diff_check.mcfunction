
execute store result score $28_Difficulty Temporary run data get entity @s SelectedItem.tag.diff
execute if score $28_Difficulty Temporary matches 0 if score @s AllLV matches 40.. run function mikatanserver:item/teleporter/dungeon/twentyeight/init
execute if score $28_Difficulty Temporary matches 1 if score @s AllLV matches 135.. run function mikatanserver:item/teleporter/dungeon/twentyeight/init