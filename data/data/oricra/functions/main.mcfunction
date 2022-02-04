#クラフターづくり
execute as @e[type=minecraft:item_frame,tag=!mikatan_crafter,nbt={Facing:1b,Item:{id:"minecraft:netherite_block"}}] at @s if block ~ ~-1 ~ crafting_table run function oricra:make_crafter 

#右クリックでクラフト
execute as @e[type=minecraft:item_frame,tag=mikatan_crafter,nbt={ItemRotation:1b,Item:{id:"minecraft:glass_pane",tag:{Tags:["mikatan_crafter"]}}}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ dropper[facing=up] run function oricra:crafting

#クラフターを壊す条件
execute at @e[type=minecraft:item_frame,tag=mikatan_crafter] unless entity @e[type=item_frame,distance=..0.2,limit=1,sort=nearest,nbt={Facing:1b,Item:{id:"minecraft:glass_pane",tag:{Tags:["mikatan_crafter"]}}}] run function oricra:condition
execute at @e[type=minecraft:item_frame,tag=mikatan_crafter] unless block ~ ~ ~ air run function oricra:condition
execute at @e[type=minecraft:item_frame,tag=mikatan_crafter] unless block ~ ~-1 ~ dropper[facing=up] run function oricra:condition
