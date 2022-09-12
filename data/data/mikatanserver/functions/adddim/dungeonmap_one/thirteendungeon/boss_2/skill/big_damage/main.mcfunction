tellraw @a[tag=DungeonPlay_13] [{"text": "神子>>","color": "white"},{"text": "再創造！！","color": "#7fff00"}]

effect give @a[tag=DungeonPlay_13,distance=30..] instant_damage 1 4
effect give @a[tag=DungeonPlay_13,distance=8..] instant_damage 1 3

execute as @a[tag=DungeonPlay_13,distance=8..] at @s run particle soul ~ ~ ~ 0.25 0.5 0.25 1 100

execute as @a[tag=DungeonPlay_13,distance=8..] at @s run playsound block.beacon.power_select master @s ~ ~ ~ 1 1