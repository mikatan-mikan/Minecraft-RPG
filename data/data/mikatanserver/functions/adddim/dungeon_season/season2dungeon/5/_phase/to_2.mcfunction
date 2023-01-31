tag @s add Phase2
execute as @a[tag=DungeonPlay_season2] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1
tp @s -165.5 85 1195.5 -90 0
execute as @a[tag=DungeonPlay_season2] run tp @s -184.5 85 1195.5
execute store result bossbar season2boss_bar value run scoreboard players get $MAX_HP season2BossSkill
scoreboard players operation $season2 BossHP = $MAX_HP season2BossSkill
title @a[tag=DungeonPlay_season2] title [{"text": "その存在は真のサウンドを奏でて","color": "red"}]
tellraw @a[tag=DungeonPlay_season2] [{"text": "Music of Finale>>","color": "red"},{"text": "ダ・カーポ","color": "dark_purple"}]