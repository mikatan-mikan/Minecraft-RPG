#クラフターづくり
execute as @e[type=minecraft:item_frame,tag=!My_reinforcer,nbt={Facing:1b,Item:{id:"minecraft:slime_ball",tag:{CustomModelData:19}}}] at @s if block ~ ~-1 ~ crafting_table run function orireinforcer:make_crafter 

#右クリックでクラフト
execute as @e[type=minecraft:item_frame,tag=My_reinforcer,nbt={ItemRotation:1b,Item:{id:"minecraft:lime_concrete",tag:{Tags:["My_reinforcer"]}}}] at @s positioned ~ ~-1 ~ if block ~ ~ ~ dropper[facing=up] run function orireinforcer:crafting

#クラフターを壊す条件
execute at @e[type=minecraft:item_frame,tag=My_reinforcer] unless entity @e[type=item_frame,distance=..0.2,limit=1,sort=nearest,nbt={Facing:1b,Item:{id:"minecraft:lime_concrete",tag:{Tags:["My_reinforcer"]}}}] run function orireinforcer:condition
execute at @e[type=minecraft:item_frame,tag=My_reinforcer] unless block ~ ~ ~ air run function orireinforcer:condition
execute at @e[type=minecraft:item_frame,tag=My_reinforcer] unless block ~ ~-1 ~ dropper[facing=up] run function orireinforcer:condition
