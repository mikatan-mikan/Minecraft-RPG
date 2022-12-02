effect give @a[tag=BossBattle24] levitation 5 128 true
execute as @a[tag=DungeonPlay_24] at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_24] [{"text": "Music of Finale>>","color": "red"},{"text": "ペザンテ","color": "aqua"}]