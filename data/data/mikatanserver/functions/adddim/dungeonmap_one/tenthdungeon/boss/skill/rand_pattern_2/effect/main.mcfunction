effect clear @s
effect clear @a[tag=BossBattle10]
execute as @a[tag=DungeonPlay_10] at @s run playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_10] [{"text": "iron blade>>","color": "gray"},{"text": "エフェクトファクター！！","color": "white"}]