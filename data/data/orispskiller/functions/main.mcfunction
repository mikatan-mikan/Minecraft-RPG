#クラフターづくり
execute as @e[type=minecraft:item_frame,tag=!My_spskiller,nbt={Facing:1b,Item:{id:"minecraft:nautilus_shell",tag:{CustomModelData:27}}}] at @s if block ~ ~-1 ~ crafting_table run function orispskiller:make_crafter 

#右クリックでクラフト
execute as @e[type=minecraft:item_frame,tag=My_spskiller,nbt={ItemRotation:1b,Item:{id:"minecraft:light_blue_stained_glass",tag:{Tags:["My_spskiller"]}}}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ dropper[facing=up] run function orispskiller:crafting

#クラフターを壊す条件
execute at @e[type=minecraft:item_frame,tag=My_spskiller] unless entity @e[type=item_frame,distance=..0.2,limit=1,sort=nearest,nbt={Facing:1b,Item:{id:"minecraft:light_blue_stained_glass",tag:{Tags:["My_spskiller"]}}}] run function orispskiller:condition
execute at @e[type=minecraft:item_frame,tag=My_spskiller] unless block ~ ~ ~ air run function orispskiller:condition
execute at @e[type=minecraft:item_frame,tag=My_spskiller] unless block ~ ~-1 ~ dropper[facing=up] run function orispskiller:condition
