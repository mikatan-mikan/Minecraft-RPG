scoreboard players remove @s mana 55

execute as @e[distance=..10,type=#mikatanserver:mobs,limit=1] at @s run function mikatanserver:item/rod/rupture/rupture

execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{Pcluster_ar:true}},{Slot:101b,tag:{Pcluster_ar:true}},{Slot:102b,tag:{Pcluster_ar:true}},{Slot:103b,tag:{Pcluster_ar:true}}]}] run function mikatanserver:item/rod/rupture/full/main