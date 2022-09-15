#クラフターづくり
execute as @e[type=minecraft:item_frame,tag=!My_enhancer,nbt={Facing:1b,Item:{id:"minecraft:book",tag:{Enchantments:[{id:"minecraft:aqua_affinity",lvl:100s}],HideFlags:1}}}] at @s if block ~ ~-1 ~ crafting_table run function orienhancer:make_crafter 

#右クリックでクラフト
execute as @e[type=minecraft:item_frame,tag=My_enhancer,nbt={ItemRotation:1b,Item:{id:"minecraft:red_wool",tag:{Tags:["My_enhancer"]}}}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ dropper[facing=up] run function orienhancer:crafting

#クラフターを壊す条件
execute at @e[type=minecraft:item_frame,tag=My_enhancer] unless entity @e[type=item_frame,distance=..0.2,limit=1,sort=nearest,nbt={Facing:1b,Item:{id:"minecraft:red_wool",tag:{Tags:["My_enhancer"]}}}] run function orienhancer:condition
execute at @e[type=minecraft:item_frame,tag=My_enhancer] unless block ~ ~ ~ air run function orienhancer:condition
execute at @e[type=minecraft:item_frame,tag=My_enhancer] unless block ~ ~-1 ~ dropper[facing=up] run function orienhancer:condition
