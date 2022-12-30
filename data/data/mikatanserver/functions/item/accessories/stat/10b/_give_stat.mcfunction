scoreboard players reset @s CustomModelData
execute if entity @s[nbt={Inventory:[{Slot:10b,id:"minecraft:magma_cream"}]}] store result score @s CustomModelData run data get entity @s Inventory[{Slot:10b}].tag.CustomModelData
execute if score @s CustomModelData matches 1.. run function mikatanserver:item/accessories/stat/10b/main
scoreboard players reset @s CustomModelData