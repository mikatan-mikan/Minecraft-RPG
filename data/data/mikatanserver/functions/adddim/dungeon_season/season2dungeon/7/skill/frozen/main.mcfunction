effect give @a[tag=BossBattleseason2] slowness 2 3
effect give @a[tag=BossBattleseason2] poison 3 5
effect give @a[tag=BossBattleseason2] mining_fatigue 3 1
execute as @a[tag=BossBattleseason2] at @s run playsound block.grass.break master @s ~ ~ ~ 2 2
tellraw @a[tag=DungeonPlay_season2] [{"text": "Venus & Goddess>>","color": "dark_green"},{"text": "フローズンマジック！！","color": "blue"}]