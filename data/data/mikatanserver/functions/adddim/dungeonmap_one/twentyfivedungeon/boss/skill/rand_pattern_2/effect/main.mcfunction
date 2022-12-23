effect clear @s
effect clear @a[tag=BossBattle25]
execute as @a[tag=DungeonPlay_25] at @s run playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_25] [{"text": "聖杯を奪いし者>>","color": "yellow"},{"text": "エフェクトファクター！！","color": "#666666"}]