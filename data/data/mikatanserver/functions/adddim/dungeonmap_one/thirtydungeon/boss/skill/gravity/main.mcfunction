effect give @a[tag=BossBattle30] levitation 5 128 true
execute as @a[tag=DungeonPlay_30] at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_30] [{"text": "大精霊 サラマンダー>>","color": "#cc0000"},{"text": "重力波","color": "red"}]