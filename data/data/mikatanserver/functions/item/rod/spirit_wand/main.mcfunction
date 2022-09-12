scoreboard players remove @s mana 100

execute as @e[type=#mikatanserver:mobs] at @s run function mikatanserver:item/rod/spirit_wand/slow
#sunstone一式なら
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{sun_ar:1b}},{Slot:101b,tag:{sun_ar:1b}},{Slot:102b,tag:{sun_ar:1b}},{Slot:103b,tag:{sun_ar:1b}}]}] run function mikatanserver:item/rod/rare_stone_wand/sun_full/main