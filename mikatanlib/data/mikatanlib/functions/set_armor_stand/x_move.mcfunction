
execute store result score $max_y MK.sa.Place run scoreboard players get $y MK.sa.Place
#座標を取得する
execute store result score $now_x MK.sa.Place run data get entity @s Pos[0]
execute store result score $now_y MK.sa.Place run data get entity @s Pos[1]
execute store result score $now_z MK.sa.Place run data get entity @s Pos[2]
#初期座標として格納
scoreboard players operation $def_x MK.sa.Place = $now_x MK.sa.Place
scoreboard players operation $def_y MK.sa.Place = $now_y MK.sa.Place
scoreboard players operation $def_z MK.sa.Place = $now_z MK.sa.Place

function mikatanlib:set_armor_stand/move_main

