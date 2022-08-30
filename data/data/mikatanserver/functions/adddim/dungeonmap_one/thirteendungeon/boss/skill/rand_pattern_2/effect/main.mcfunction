effect clear @s
effect clear @a[tag=BossBattle13]
execute as @a[tag=DungeonPlay_13] at @s run playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_13] [{"text": "神子>>","color": "white"},{"text": "エフェクトファクター！！","color": "blue"}]