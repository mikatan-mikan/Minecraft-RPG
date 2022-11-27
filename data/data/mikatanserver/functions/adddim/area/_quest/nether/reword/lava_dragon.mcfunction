scoreboard players set @s MK.r.RandValue 10
function mikatanlib:rand/rand_exe

execute if score @s MK.r.RandValue matches 0 run give @s diamond_ore 2
execute if score @s MK.r.RandValue matches 1 run give @s deepslate_diamond_ore 2
execute if score @s MK.r.RandValue matches 2 run give @s emerald_ore 2
execute if score @s MK.r.RandValue matches 3 run give @s deepslate_emerald_ore 2
execute if score @s MK.r.RandValue matches 4 run give @s coal_ore 16
execute if score @s MK.r.RandValue matches 5 run give @s nether_quartz_ore 4
execute if score @s MK.r.RandValue matches 6 run give @s nether_star 1
execute if score @s MK.r.RandValue matches 7 run give @s golden_apple 64
execute if score @s MK.r.RandValue matches 8 run give @s slime_ball{CustomModelData:5,display:{Name:'[{"text": "enchanted sunstone"}]'},HideFlags:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1
execute if score @s MK.r.RandValue matches 9 run give @s experience_bottle 64
xp add @s 5 levels