effect give @a[distance=..4] speed 3 0
playsound block.slime_block.step master @a[distance=..4] ~ ~ ~ 1 2
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{magma_ar:true}},{Slot:101b,tag:{magma_ar:true}},{Slot:102b,tag:{magma_ar:true}},{Slot:103b,tag:{magma_ar:true}}]}] at @s run function mikatanserver:item/enchant/cubism/magma_sword/mana_check