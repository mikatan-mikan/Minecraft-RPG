##現在の装備状況の取得
execute store result score $helmet HaveArmor run data get entity @s Inventory[{Slot:103b}].Count
execute store result score $chest HaveArmor run data get entity @s Inventory[{Slot:102b}].Count
execute store result score $leggings HaveArmor run data get entity @s Inventory[{Slot:101b}].Count
execute store result score $boots HaveArmor run data get entity @s Inventory[{Slot:100b}].Count

##ヘルメット
execute if entity @s[nbt={SelectedItem:{tag:{carrot_helmet:1b}}}] unless score $helmet HaveArmor matches 1.. run function mikatanserver:item/armor/helmet/_check


scoreboard players reset $helmet HaveArmor
scoreboard players reset $chest HaveArmor
scoreboard players reset $leggings HaveArmor
scoreboard players reset $boots HaveArmor