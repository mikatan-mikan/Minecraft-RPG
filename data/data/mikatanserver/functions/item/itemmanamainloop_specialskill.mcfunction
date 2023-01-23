execute store result score @s CustomModelData run data get entity @s SelectedItem.tag.CustomModelData


#red:150
execute as @s[scores={SpecialSkill=150..,CustomModelData=153}] at @s run function mikatanserver:item/specialskill/red/main
#pink:150
execute as @s[scores={SpecialSkill=150..,CustomModelData=154}] at @s run function mikatanserver:item/specialskill/pink/main