effect clear @a[tag=BossBattle32]
effect give @a[tag=BossBattle32] instant_damage 1 1
execute as @a[tag=BossBattle32] at @s run playsound block.glass.break master @s ~ ~ ~ 1 1.3
tellraw @a[tag=DungeonPlay_32] [{"text": "Dream Eater>>","color": "red"},{"text": "エフェクトマテリアル","color": "white"}]