effect give @a[tag=BossBattle34] levitation 5 128 true
execute as @a[tag=DungeonPlay_34] at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_34] [{"text": "大精霊 ウィンディーネ>>","color": "aqua"},{"text": "重力波","color": "red"}]