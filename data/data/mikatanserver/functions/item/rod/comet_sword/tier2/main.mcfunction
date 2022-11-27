scoreboard players set $mana TMP 23
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

effect give @s regeneration 1 3
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.8
scoreboard players set @s MK.r.RandValue 5
function mikatanlib:rand/rand_exe
execute if score @s MK.r.RandValue matches 0 run effect give @s speed 1 0
execute if score @s MK.r.RandValue matches 1 run effect give @s haste 1 0
execute if score @s MK.r.RandValue matches 2 run effect give @s saturation 1 0
execute if score @s MK.r.RandValue matches 3 run effect give @s jump_boost 1 0
execute if score @s MK.r.RandValue matches 4 run effect give @s invisibility 1 0