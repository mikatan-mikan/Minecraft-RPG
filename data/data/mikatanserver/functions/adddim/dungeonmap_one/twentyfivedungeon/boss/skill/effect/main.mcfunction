effect give @a[tag=BossBattle25] levitation 5 128 true
execute as @a[tag=DungeonPlay_25] at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_25] [{"text": "聖杯を奪いし者>>","color": "yellow"},{"text": "聖杯の天言","color": "gold"}]