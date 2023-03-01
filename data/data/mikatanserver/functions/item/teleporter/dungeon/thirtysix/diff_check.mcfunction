
execute store result score $36_Difficulty Temporary run data get entity @s SelectedItem.tag.diff
execute if score $36_Difficulty Temporary matches 0 if score @s AllLV matches 30.. run function mikatanserver:item/teleporter/dungeon/thirtysix/init
execute if score $36_Difficulty Temporary matches 1 if score @s AllLV matches 105.. run function mikatanserver:item/teleporter/dungeon/thirtysix/init
execute if score $36_Difficulty Temporary matches 2 if score @s AllLV matches 210.. run function mikatanserver:item/teleporter/dungeon/thirtysix/init