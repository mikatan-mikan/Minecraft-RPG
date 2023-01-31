effect clear @e[tag=season2DunBoss]
effect give @a[tag=BossBattleseason2] blindness 3 0
effect give @a[tag=BossBattleseason2] poison 10 5
effect give @a[tag=BossBattleseason2] wither 10 5
execute as @a[tag=DungeonPlay_season2] at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.3 1.6 1
tellraw @a[tag=DungeonPlay_season2] [{"text": "Venus & Goddess>>","color": "dark_green"},{"text": "目くらまし！！","color": "black"}]