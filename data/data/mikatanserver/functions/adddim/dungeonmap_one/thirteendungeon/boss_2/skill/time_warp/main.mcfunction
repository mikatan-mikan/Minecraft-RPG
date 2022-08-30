tellraw @a[tag=DungeonPlay_13] [{"text": "神子>>","color": "white"},{"text": "時の揺らぎ！！","color": "#c71585"}]

execute as @a[tag=BossBattle13_2] store result score @s NowPlaceY run data get entity @s Pos[1]
execute as @a[tag=BossBattle13_2,scores={NowPlaceY=209}] at @s run function mikatanserver:adddim/dungeonmap_one/thirteendungeon/boss_2/skill/time_warp/tp

execute as @a[tag=DungeonPlay_13] at @s run playsound entity.ender_pearl.throw master @s ~ ~ ~ 1 0

 