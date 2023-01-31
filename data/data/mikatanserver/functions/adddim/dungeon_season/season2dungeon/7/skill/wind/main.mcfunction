
tellraw @a[tag=DungeonPlay_season2] [{"text": "Venus & Goddess>>","color": "dark_green"},{"text": "ウィンドマジック！！","color": "#84C98B"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2 2
scoreboard players set @s MK.r.RandValue 40
execute as @s run function mikatanlib:rand/rand_exe
scoreboard players operation $season2_dun_wind MK.r.RandValue = @s MK.r.RandValue
#scoreboard players reset @s MK.r.RandValue
execute if score $season2_dun_wind MK.r.RandValue matches 0..19 as @a[tag=DungeonPlay_season2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/wind/change_rot/0_19
execute if score $season2_dun_wind MK.r.RandValue matches 20..39 as @a[tag=DungeonPlay_season2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/7/skill/wind/change_rot/20_39