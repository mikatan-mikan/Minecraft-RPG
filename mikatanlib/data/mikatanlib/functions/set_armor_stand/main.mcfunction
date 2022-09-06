#(x,y,z)方向にMK.sa.Placeの$x,$z,$yに応じてアーマースタンドを置く関数(置くアーマースタンドはMK.sa.TagsのTagを継承する)
##自身の場所にアーマースタンドを召喚する
summon armor_stand ~ ~ ~ {Tags:["MK.sa.SetAr"],NoAI:1b,NoGravity:1b}
execute store result score $max_x MK.sa.Place run scoreboard players get $x MK.sa.Place
execute store result score $max_z MK.sa.Place run scoreboard players get $z MK.sa.Place
##繰り返す
execute as @e[tag=MK.sa.SetAr] at @s run function mikatanlib:set_armor_stand/x_move