
execute store result score $33_Difficulty Temporary run data get entity @s SelectedItem.tag.diff
execute if score $33_Difficulty Temporary matches 0 if score @s AllLV matches 100.. run function mikatanserver:item/teleporter/dungeon/thirtythree/init
execute if score $33_Difficulty Temporary matches 1 if score @s AllLV matches 190.. run function mikatanserver:item/teleporter/dungeon/thirtythree/init