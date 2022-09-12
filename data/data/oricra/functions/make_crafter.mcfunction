#クラフター制作
setblock ~ ~-1 ~ air
execute positioned ~ ~-1 ~ run kill @e[type=item,nbt={Item:{id:"minecraft:dropper",Count:1b}},limit=1,sort=nearest]
setblock ~ ~-1 ~ dropper[facing=up]{CustomName:'{"text":"Crafter++","color":"gold"}'}
data merge entity @s {Invulnerable:1,Item:{id:"minecraft:glass_pane",tag:{Tags:["mikatan_crafter"]}}}
tag @s add mikatan_crafter
playsound minecraft:block.anvil.use master @a
advancement grant @p only mikatanserver:customcrafter/tablecraft