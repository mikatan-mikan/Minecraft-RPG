execute as @e[tag=MK.pi.Print] store result score @s MK.pi.x run data get entity @s Pos[0]
execute as @e[tag=MK.pi.Print] store result score @s MK.pi.y run data get entity @s Pos[1]
execute as @e[tag=MK.pi.Print] store result score @s MK.pi.z run data get entity @s Pos[2]

execute as @e[tag=MK.pi.Print] run function mikatanlib:print_info/print_