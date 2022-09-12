scoreboard players remove @s mana 100
tag @s add MK.k.Attacker
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{ender_ar:1b}},{Slot:101b,tag:{ender_ar:1b}},{Slot:102b,tag:{ender_ar:1b}},{Slot:103b,tag:{Ender_helmet:1b}}]}] run scoreboard players set $plus_20 aotd_plus20_flag 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{aotd_tier:2b}}}] run scoreboard players set $tier_2 aotd_plus20_flag 1
scoreboard players set $MK.k.Xpower MK.k.knockbackValue 1000
scoreboard players set $MK.k.Ypower MK.k.knockbackValue 200 
execute positioned ~ ~1.5 ~ run summon armor_stand ~ ~ ~ {Small:1b,Invulnerable:1b,Invisible:1b,Tags:["AOTD_DamageChecker"]}
execute positioned ~ ~1.5 ~ run function mikatanserver:item/rod/aspect_of_the_dragon/particle
execute as @e[type=armor_stand,tag=AOTD_DamageChecker] at @s as @e[type=#mikatanserver:mobs,distance=..2.5] run function mikatanserver:item/rod/aspect_of_the_dragon/damage
kill @e[type=armor_stand,tag=AOTD_DamageChecker]