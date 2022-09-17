effect clear @s
effect give @s resistance 10 2
effect give @a[tag=BossBattle17] weakness 10 0
execute as @a[tag=DungeonPlay_17] at @s run playsound block.anvil.destroy master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_17] [{"text": "Michelle>>","color": "gold"},{"text": "防剣の構え！！","color": "yellow"}]