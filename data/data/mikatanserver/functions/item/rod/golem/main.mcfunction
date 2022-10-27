scoreboard players set $mana TMP 45
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

playsound entity.tnt.primed master @a ~ ~ ~ 0.3 1.1
function mikatanserver:item/rod/golem/particle
effect give @e[type=#mikatanserver:mobs,distance=..5] instant_damage 1 2
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{golem_ar:1b}},{Slot:101b,tag:{golem_ar:1b}},{Slot:102b,tag:{golem_ar:1b}},{Slot:103b,tag:{golem_ar:1b}}]}] run effect clear @s absorption
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{golem_ar:1b}},{Slot:101b,tag:{golem_ar:1b}},{Slot:102b,tag:{golem_ar:1b}},{Slot:103b,tag:{golem_ar:1b}}]}] run effect give @s absorption 10 0
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{golem_ar:1b}},{Slot:101b,tag:{golem_ar:1b}},{Slot:102b,tag:{golem_ar:1b}},{Slot:103b,tag:{golem_ar:1b}}]}] run effect give @a[distance=..3] speed 3 1