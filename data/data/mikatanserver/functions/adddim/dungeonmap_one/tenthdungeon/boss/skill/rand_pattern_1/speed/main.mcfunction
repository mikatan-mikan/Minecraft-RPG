effect clear @s
effect give @a[tag=BossBattle10] speed 5 0
execute as @a[tag=DungeonPlay_10] at @s run playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_10] [{"text": "iron blade>>","color": "gray"},{"text": "俊足！！","color": "aqua"}]