effect clear @s
effect clear @a[tag=BossBattle15]
execute as @a[tag=DungeonPlay_15] at @s run playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_15] [{"text": "溶岩塊>>","color": "red"},{"text": "エフェクトファクター！！","color": "white"}]