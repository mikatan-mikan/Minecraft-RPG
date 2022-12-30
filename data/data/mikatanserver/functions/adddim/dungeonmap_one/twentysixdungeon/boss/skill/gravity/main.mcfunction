effect give @a[tag=BossBattle26] levitation 5 128 true
execute as @a[tag=DungeonPlay_26] at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_26] [{"text": "大精霊 シルフ>>","color": "#abdbb3"},{"text": "重力波","color": "red"}]