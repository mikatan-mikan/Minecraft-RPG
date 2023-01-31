tp ^ ^ ^0.5

execute as @a[distance=..2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/sword/through/damageexe
execute if entity @a[distance=..2] run kill @s
execute unless block ~ ~1 ~ air unless block ~ ~1 ~ cave_air run kill @s
execute if score @s throughSwordTimer matches 120.. run kill @s

scoreboard players add @s throughSwordTimer 1

execute if score @s throughSwordTimer matches ..120 run schedule function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/sword/through/move 1t