
tellraw @a[tag=DungeonPlay_18] [{"text": "Venus & Goddess>>","color": "dark_green"},{"text": "ウィンドマジック！！","color": "#84C98B"}]
scoreboard players set $18_dun_wind MK.r.RandValue 40
execute if score $18_dun_wind MK.r.RandValue matches 0..19 as @a[tag=DungeonPlay_18] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/wind/change_rot/0_19
execute if score $18_dun_wind MK.r.RandValue matches 20..39 as @a[tag=DungeonPlay_18] at @s run function mikatanserver:adddim/dungeonmap_one/eightteendungeon/boss/skill/wind/change_rot/20_39