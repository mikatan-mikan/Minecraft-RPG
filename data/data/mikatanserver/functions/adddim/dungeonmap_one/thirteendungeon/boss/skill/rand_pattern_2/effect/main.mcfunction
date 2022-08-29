effect clear @s
effect clear @a[tag=BossBattle11]
execute as @a[tag=DungeonPlay_11] at @s run playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_11] [{"text": "master sattelite>>","color": "green"},{"text": "エフェクトファクター！！","color": "white"}]