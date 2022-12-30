
##slotN(9<=N<=11)が今までアクセサリーがセットされていて、外れたなら
execute if score @s HaveAccessories9bFlag matches 1 unless entity @s[nbt={Inventory:[{Slot:9b,id:"minecraft:magma_cream"}]}] run function mikatanserver:item/accessories/_remove_attributes/9b
execute if score @s HaveAccessories10bFlag matches 1 unless entity @s[nbt={Inventory:[{Slot:10b,id:"minecraft:magma_cream"}]}] run function mikatanserver:item/accessories/_remove_attributes/10b
execute if score @s HaveAccessories11bFlag matches 1 unless entity @s[nbt={Inventory:[{Slot:11b,id:"minecraft:magma_cream"}]}] run function mikatanserver:item/accessories/_remove_attributes/11b


advancement revoke @s only mikatanserver:judge/change_inventory