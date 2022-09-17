effect clear @s
effect give @a[tag=BossBattle17] blindness 3 0
effect give @a[tag=BossBattle17] poison 10 5
effect give @a[tag=BossBattle17] wither 10 5
execute as @a[tag=DungeonPlay_17] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_17] [{"text": "Michelle>>","color": "gold"},{"text": "目くらまし！！","color": "black"}]