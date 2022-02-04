#クラフター制作
setblock ~ ~-1 ~ air
execute positioned ~ ~-1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},limit=1,sort=nearest]
setblock ~ ~-1 ~ dropper[facing=up]{CustomName:'{"text":"Enchanter++","color": "blue"}'}
data merge entity @s {Invulnerable:1,Item:{id:"minecraft:lapis_block",tag:{CustomModelData:1,Tags:["My_enchanter"]}}}
tag @s add My_enchanter
playsound block.enchantment_table.use master @a
advancement grant @p only mikatanserver:customenchanter/tablecraft