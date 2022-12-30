#クラフター制作
setblock ~ ~-1 ~ air
execute positioned ~ ~-1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},limit=1,sort=nearest]
setblock ~ ~-1 ~ dropper[facing=up]{CustomName:'{"text":"Reinforcer","color": "green"}'}
data merge entity @s {Invulnerable:1,Item:{id:"minecraft:lime_concrete",tag:{CustomModelData:1,Tags:["My_reinforcer"],display:{Name:'[{"text":"Reinforcer","color":"green"}]'}}}}
tag @s add My_reinforcer
playsound block.enchantment_table.use master @a
advancement grant @p only mikatanserver:customreinforcer/tablecraft