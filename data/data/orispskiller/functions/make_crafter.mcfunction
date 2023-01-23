#クラフター制作
setblock ~ ~-1 ~ air
execute positioned ~ ~-1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},limit=1,sort=nearest]
setblock ~ ~-1 ~ dropper[facing=up]{CustomName:'{"text":"Special Skiller","color": "aqua"}'}
data merge entity @s {Invulnerable:1,Item:{id:"minecraft:light_blue_stained_glass",tag:{CustomModelData:1,Tags:["My_spskiller"],display:{Name:'[{"text":"Special Skiller","color":"aqua"}]'}}}}
tag @s add My_spskiller
playsound block.enchantment_table.use master @a
advancement grant @p only mikatanserver:customspskiller/root