effect clear @s
effect give @a[tag=BossBattle22] levitation 1 127
execute as @a[tag=DungeonPlay_22] at @s run playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_22] [{"text": "iron blade>>","color": "gray"},{"text": "鈍床！！","color": "blue"}]