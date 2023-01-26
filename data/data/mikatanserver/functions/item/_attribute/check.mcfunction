execute store result score @s EnhanceNum run data get entity @s SelectedItem.tag.Enhance_Num
##属性
execute if score @s EnhanceNum matches 1 at @s run function mikatanserver:item/_attribute/fire/check
execute if score @s EnhanceNum matches 2 at @s run function mikatanserver:item/_attribute/wind/check
execute if score @s EnhanceNum matches 3 at @s run function mikatanserver:item/_attribute/ice/check
execute if score @s EnhanceNum matches 4 at @s run function mikatanserver:item/_attribute/light/check
execute if score @s EnhanceNum matches 5 at @s run function mikatanserver:item/_attribute/dark/check
execute if score @s EnhanceNum matches 101 at @s run function mikatanserver:item/_attribute/tier_2/flame/check
execute if score @s EnhanceNum matches 102 at @s run function mikatanserver:item/_attribute/tier_2/storm/check
execute if score @s EnhanceNum matches 103 at @s run function mikatanserver:item/_attribute/tier_2/hail/check