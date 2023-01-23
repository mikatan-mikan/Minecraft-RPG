#クラフター削除
kill @e[distance=..0.2,type=item_frame,limit=1,sort=nearest]
fill ~ ~-1 ~ ~ ~-1 ~ air destroy
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dropper",Count:1b}}]
kill @e[type=item,distance=..0.2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:nautilus_shell",Count:1b,tag:{CustomMocelData:27}}}]
#素材返却
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:light_blue_stained_glass",Count:1b}}