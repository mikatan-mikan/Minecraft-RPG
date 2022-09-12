#クラフターづくり
execute as @e[type=minecraft:item_frame,tag=!My_enchanter,nbt={Facing:1b,Item:{id:"minecraft:lapis_lazuli",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],HideFlags:1}}}] at @s if block ~ ~-1 ~ crafting_table run function oriench:make_crafter 

#右クリックでクラフト
execute as @e[type=minecraft:item_frame,tag=My_enchanter,nbt={ItemRotation:1b,Item:{id:"minecraft:lapis_block",tag:{Tags:["My_enchanter"]}}}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ dropper[facing=up] run function oriench:crafting

#クラフターを壊す条件
execute at @e[type=minecraft:item_frame,tag=My_enchanter] unless entity @e[type=item_frame,distance=..0.2,limit=1,sort=nearest,nbt={Facing:1b,Item:{id:"minecraft:lapis_block",tag:{Tags:["My_enchanter"]}}}] run function oriench:condition
execute at @e[type=minecraft:item_frame,tag=My_enchanter] unless block ~ ~ ~ air run function oriench:condition
execute at @e[type=minecraft:item_frame,tag=My_enchanter] unless block ~ ~-1 ~ dropper[facing=up] run function oriench:condition
