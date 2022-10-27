scoreboard players set $mana TMP 40
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

playsound block.anvil.place master @a ~ ~ ~ 0.3 1.1
function mikatanserver:item/rod/gravity/particle
effect give @e[type=#mikatanserver:mobs,distance=..5] slowness 2 5
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{aqua_ar:1b,armor_forest:1b}},{Slot:101b,tag:{aqua_ar:1b,armor_forest:1b}},{Slot:102b,tag:{aqua_ar:1b,armor_forest:1b}},{Slot:103b,tag:{aqua_ar:1b,armor_forest:1b}}]}] run effect clear @a[distance=..3] absorption
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{aqua_ar:1b,armor_forest:1b}},{Slot:101b,tag:{aqua_ar:1b,armor_forest:1b}},{Slot:102b,tag:{aqua_ar:1b,armor_forest:1b}},{Slot:103b,tag:{aqua_ar:1b,armor_forest:1b}}]}] run effect give @a[distance=..3] absorption 10 0