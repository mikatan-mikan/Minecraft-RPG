effect clear @s
effect give @a[tag=BossBattleseason2] blindness 5 0
effect give @a[tag=BossBattleseason2] poison 10 5
execute as @a[tag=DungeonPlay_season2] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_season2] [{"text": "iron blade>>","color": "gray"},{"text": "目くらまし！！","color": "black"}]