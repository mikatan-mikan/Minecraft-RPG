effect clear @a[tag=BossBattle28]
effect give @a[tag=BossBattle28] instant_damage 1 1
execute as @a[tag=BossBattle28] at @s run playsound block.glass.break master @s ~ ~ ~ 1 1.3
tellraw @a[tag=DungeonPlay_28] [{"text": "Dream Eater>>","color": "red"},{"text": "エフェクトマテリアル","color": "white"}]