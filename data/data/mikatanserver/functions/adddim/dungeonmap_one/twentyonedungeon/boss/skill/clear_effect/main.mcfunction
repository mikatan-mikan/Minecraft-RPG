effect clear @a[tag=BossBattle21]
effect give @a[tag=BossBattle21] instant_damage 1 2
execute as @a[tag=BossBattle21] at @s run playsound block.glass.break master @s ~ ~ ~ 1 1.3
tellraw @a[tag=DungeonPlay_21] [{"text": "The Gravity>>","color": "#515254"},{"text": "エフェクトマテリアル！！","color": "white"}]