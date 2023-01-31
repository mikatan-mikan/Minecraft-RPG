execute as @s in mikatanserver:dungeon run tp @s -1263.5 0 1020.5 90 0
# title @s subtitle [{"text": "必要Lv 40以上"}]
title @s title [{"text": "巫天編","color":"red"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
function mikatanserver:adddim/dungeon_season/season2dungeon/init
advancement grant @s only mikatanserver:tp/dungeon/season2
tag @a remove season2DLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_season2
scoreboard players set $season2 dungeon_play_now 1
# ##何体目のボスかの変数
# scoreboard players set $season2_boss dungeon_play_now 1
# ##どのボスかの変数
# #0 : 剣舞
# #1 : 波動
# #2 : 溶岩流
# #3 : 略奪者
# #4 : 重力者
# #5 : 旋律
# #6 : 巫
# #7 : 女神
# scoreboard players set @s MK.r.RandValue 8
# function mikatanlib:rand/rand_exe
# scoreboard players operation $season2_what_boss dungeon_play_now = @s MK.r.RandValue
gamemode adventure @a[tag=DungeonPlay_season2]