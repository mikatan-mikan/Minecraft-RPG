effect clear @a[tag=BossBattle20]
effect give @a[tag=BossBattle20] instant_damage 1 1
execute as @a[tag=BossBattle20] at @s run playsound block.glass.break master @s ~ ~ ~ 1 1.3
tellraw @a[tag=DungeonPlay_20] [{"text": "Maiden Valkyrie>>","color": "red"},{"text": "エフェクトマテリアル！！","color": "white"}]