execute if predicate mikatanserver:chance/0.99 run scoreboard players set @s SmallAmethyst 0
clear @s small_amethyst_bud{CustomModelData:2} 1
kill @e[type=item,distance=..5,nbt={Item:{Count:1b,id:"minecraft:small_amethyst_bud",tag:{CustomModelData:2}}}]