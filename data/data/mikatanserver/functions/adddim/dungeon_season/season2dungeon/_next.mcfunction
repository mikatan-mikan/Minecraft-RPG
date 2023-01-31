
##何体目のボスかの変数
scoreboard players add $season2_boss dungeon_play_now 1
##どのボスかの変数
#0 : 剣舞
#1 : 波動
#2 : 溶岩流
#3 : 略奪者
#4 : 重力者
#5 : 旋律
#6 : 巫
#7 : 女神
scoreboard players set @s MK.r.RandValue 8
function mikatanlib:rand/rand_exe
scoreboard players operation $season2_what_boss dungeon_play_now = @s MK.r.RandValue
execute if score $season2_what_boss dungeon_play_now matches 0 run function mikatanserver:adddim/dungeon_season/season2dungeon/0/main
execute if score $season2_what_boss dungeon_play_now matches 1 run function mikatanserver:adddim/dungeon_season/season2dungeon/1/main
execute if score $season2_what_boss dungeon_play_now matches 2 run function mikatanserver:adddim/dungeon_season/season2dungeon/2/main
execute if score $season2_what_boss dungeon_play_now matches 3 run function mikatanserver:adddim/dungeon_season/season2dungeon/3/main
execute if score $season2_what_boss dungeon_play_now matches 4 run function mikatanserver:adddim/dungeon_season/season2dungeon/4/main
execute if score $season2_what_boss dungeon_play_now matches 5 run function mikatanserver:adddim/dungeon_season/season2dungeon/5/main
execute if score $season2_what_boss dungeon_play_now matches 6 run function mikatanserver:adddim/dungeon_season/season2dungeon/6/main
execute if score $season2_what_boss dungeon_play_now matches 7 run function mikatanserver:adddim/dungeon_season/season2dungeon/7/main
scoreboard players set $season2_next_time dungeon_play_now 0