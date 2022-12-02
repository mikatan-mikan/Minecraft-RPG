scoreboard players set $mana TMP 10
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

playsound item.shield.block master @a ~ ~ ~ 2 1.7

execute as @e[type=#mikatanserver:mobs,distance=..5] run data merge entity @s {Fire:1000000}

execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{armor_ruins:true}},{Slot:101b,tag:{armor_ruins:true}},{Slot:102b,tag:{armor_ruins:true}},{Slot:103b,tag:{armor_ruins:true}}]}] run function mikatanserver:item/rod/ancient/ruins_full/mana
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{armor_forest:true}},{Slot:101b,tag:{armor_forest:true}},{Slot:102b,tag:{armor_forest:true}},{Slot:103b,tag:{armor_forest:true}}]}] run function mikatanserver:item/rod/ancient/forest_full/mana

function mikatanserver:item/rod/ancient/particle