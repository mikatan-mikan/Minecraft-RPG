execute as @a[tag=DungeonPlay_34] at @s run effect give @s instant_damage 1 2
execute as @a[tag=DungeonPlay_34] at @s run playsound block.wart_block.place master @s ~ ~ ~ 1 1.4
tellraw @a[tag=DungeonPlay_34] [{"text": "大精霊 ウィンディーネ>>","color": "aqua"},{"text": "水の雫","color": "blue"}]