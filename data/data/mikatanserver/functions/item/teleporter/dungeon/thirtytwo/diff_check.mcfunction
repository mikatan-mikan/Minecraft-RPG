
execute store result score $32_Difficulty Temporary run data get entity @s SelectedItem.tag.diff
execute if score $32_Difficulty Temporary matches 0 if score @s AllLV matches 40.. run function mikatanserver:item/teleporter/dungeon/thirtytwo/init
execute if score $32_Difficulty Temporary matches 1 if score @s AllLV matches 60.. run function mikatanserver:item/teleporter/dungeon/thirtytwo/init
execute if score $32_Difficulty Temporary matches 2 if score @s AllLV matches 170.. run function mikatanserver:item/teleporter/dungeon/thirtytwo/init