#クラフターづくり
execute as @e[type=minecraft:item_frame,tag=!My_artifacter,nbt={Facing:1b,Item:{id:"minecraft:book",tag:{Enchantments:[{id:"minecraft:aqua_affinity",lvl:101s}],HideFlags:1}}}] at @s if block ~ ~-1 ~ crafting_table run function oriartifacter:make_crafter 

#右クリックでクラフト
execute as @e[type=minecraft:item_frame,tag=My_artifacter,nbt={ItemRotation:1b,Item:{id:"minecraft:ancient_debris",tag:{Tags:["My_artifacter"]}}}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ dropper[facing=up] run function oriartifacter:crafting

#クラフターを壊す条件
execute at @e[type=minecraft:item_frame,tag=My_artifacter] unless entity @e[type=item_frame,distance=..0.2,limit=1,sort=nearest,nbt={Facing:1b,Item:{id:"minecraft:ancient_debris",tag:{Tags:["My_artifacter"]}}}] run function oriartifacter:condition
execute at @e[type=minecraft:item_frame,tag=My_artifacter] unless block ~ ~ ~ air run function oriartifacter:condition
execute at @e[type=minecraft:item_frame,tag=My_artifacter] unless block ~ ~-1 ~ dropper[facing=up] run function oriartifacter:condition
