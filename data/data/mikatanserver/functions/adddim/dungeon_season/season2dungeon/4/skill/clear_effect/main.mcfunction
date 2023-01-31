effect clear @a[tag=BossBattleseason2]
effect give @a[tag=BossBattleseason2] instant_damage 1 2
execute as @a[tag=BossBattleseason2] at @s run playsound block.glass.break master @s ~ ~ ~ 1 1.3
tellraw @a[tag=DungeonPlay_season2] [{"text": "The Gravity>>","color": "#515254"},{"text": "エフェクトマテリアル！！","color": "white"}]