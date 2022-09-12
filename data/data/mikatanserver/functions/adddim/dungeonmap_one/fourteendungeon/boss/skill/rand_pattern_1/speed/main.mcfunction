effect clear @a[tag=BossBattle14]
effect give @e[tag=FourteenDunBoss] speed 1 0
execute as @a[tag=DungeonPlay_14] at @s run playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 1 1.6 1
tellraw @a[tag=DungeonPlay_14] [{"text": "略奪者>>","color": "dark_purple"},{"text": "俊足！！","color": "aqua"}]