tellraw @a[tag=DungeonPlay_13] [{"text": "神子>>","color": "white"},{"text": "追撃！！","color": "#C0A000"}]

execute as @a[tag=DungeonPlay_13] at @s run playsound block.amethyst_block.step master @s ~ ~ ~ 1 0
execute as @a[tag=DungeonPlay_13] at @s run effect give @s instant_damage 1 2