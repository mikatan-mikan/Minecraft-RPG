#クラフター削除
kill @e[distance=..0.2,type=item_frame,limit=1,sort=nearest]
fill ~ ~-1 ~ ~ ~-1 ~ air destroy
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dropper",Count:1b}}]
kill @e[type=item,distance=..0.2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:glass_pane",Count:1b}}]
#素材返却
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:crafting_table",Count:1b}}
