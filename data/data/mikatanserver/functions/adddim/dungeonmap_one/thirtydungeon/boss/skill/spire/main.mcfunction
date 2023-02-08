execute as @a[tag=DungeonPlay_30] at @s run effect give @s instant_damage 1 2
execute as @a[tag=DungeonPlay_30] at @s run playsound block.fire.extinguish master @s ~ ~ ~ 1 1.4
tellraw @a[tag=DungeonPlay_30] [{"text": "大精霊 サラマンダー>>","color": "#cc0000"},{"text": "炎の渦","color": "green"}]