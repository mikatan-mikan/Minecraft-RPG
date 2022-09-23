effect give @a[tag=BossBattle18] slowness 2 3
effect give @a[tag=BossBattle18] poison 3 5
effect give @a[tag=BossBattle18] mining_fatigue 3 1
execute as @a[tag=BossBattle18] at @s run playsound block.grass.break master @s ~ ~ ~ 2 2
tellraw @a[tag=DungeonPlay_18] [{"text": "Venus & Goddess>>","color": "dark_green"},{"text": "フローズンマジック！！","color": "blue"}]