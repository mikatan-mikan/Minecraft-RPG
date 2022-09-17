effect clear @s
effect give @s strength 5 1
effect clear @a[tag=BossBattle17] absorption
effect give @a[tag=BossBattle17] instant_damage 1 1

execute as @a[tag=DungeonPlay_17] at @s run playsound item.trident.thunder master @s ~ ~ ~ 2 2 1
tellraw @a[tag=DungeonPlay_17] [{"text": "Michelle>>","color": "gold"},{"text": "鼓舞の構え！！","color": "red"}]