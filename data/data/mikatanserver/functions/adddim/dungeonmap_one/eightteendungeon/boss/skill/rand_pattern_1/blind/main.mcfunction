effect clear @e[tag=EightteenDunBoss]
effect give @a[tag=BossBattle18] blindness 3 0
effect give @a[tag=BossBattle18] poison 10 5
effect give @a[tag=BossBattle18] wither 10 5
execute as @a[tag=DungeonPlay_18] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.3 1.6 1
tellraw @a[tag=DungeonPlay_18] [{"text": "Venus & Goddess>>","color": "dark_green"},{"text": "目くらまし！！","color": "black"}]