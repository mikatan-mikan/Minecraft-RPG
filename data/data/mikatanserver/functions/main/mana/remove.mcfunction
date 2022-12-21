scoreboard players operation @s mana -= $mana TMP
tag @s add UseMana
execute if entity @s[nbt={Inventory:[{Slot:10b,tag:{accessories:1b}}]}] run function mikatanserver:main/mana/remove_accessories