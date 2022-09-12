
# execute store result score $max_y MK.sa.Place run scoreboard players get $y MK.sa.Place
# #座標を取得する
# execute store result score $now_x MK.sa.Place run data get entity @s Pos[0]
# execute store result score $now_y MK.sa.Place run data get entity @s Pos[1]
# execute store result score $now_z MK.sa.Place run data get entity @s Pos[2]
# #初期座標として格納
# scoreboard players operation $def_x MK.sa.Place = $now_x MK.sa.Place
# scoreboard players operation $def_y MK.sa.Place = $now_y MK.sa.Place
# scoreboard players operation $def_z MK.sa.Place = $now_z MK.sa.Place


#座標を1プラスして、$x,$y,$zから適時マイナスする
#y座標をzが0の時に減算する
execute if score $z MK.sa.Place matches 0 run scoreboard players add $now_y MK.sa.Place 1
#残り回数を保持する
execute if score $z MK.sa.Place matches 0 run scoreboard players remove $y MK.sa.Place 1
#減算したらzを元の場所に戻す
execute if score $z MK.sa.Place matches 0 run scoreboard players operation $now_z MK.sa.Place = $def_z MK.sa.Place
execute if score $z MK.sa.Place matches 0 run scoreboard players operation $z MK.sa.Place = $max_z MK.sa.Place


#z座標をxが0の時に減算する
execute if score $x MK.sa.Place matches 0 run scoreboard players add $now_z MK.sa.Place 1
#残り回数を保持する
execute if score $x MK.sa.Place matches 0 run scoreboard players remove $z MK.sa.Place 1
#減算したらxを元の場所に戻す(xの残り回数も)
execute if score $x MK.sa.Place matches 0 run scoreboard players operation $now_x MK.sa.Place = $def_x MK.sa.Place
execute if score $x MK.sa.Place matches 0 run scoreboard players operation $x MK.sa.Place = $max_x MK.sa.Place

scoreboard players add $now_x MK.sa.Place 1
scoreboard players remove $x MK.sa.Place 1

execute store result entity @e[tag=MK.sa.SetAr,limit=1] Pos[0] double 1 run scoreboard players get $now_x MK.sa.Place
execute store result entity @e[tag=MK.sa.SetAr,limit=1] Pos[1] double 1 run scoreboard players get $now_y MK.sa.Place
execute store result entity @e[tag=MK.sa.SetAr,limit=1] Pos[2] double 1 run scoreboard players get $now_z MK.sa.Place

execute if score $x MK.sa.Place matches 0.. if score $y MK.sa.Place matches 0.. if score $z MK.sa.Place matches 0.. run schedule function mikatanlib:set_armor_stand/move_main 1t
execute unless score $x MK.sa.Place matches 0.. unless score $y MK.sa.Place matches 0.. unless score $z MK.sa.Place matches 0.. run kill @e[tag=MK.sa.SetAr]