effect clear @e[tag=EightteenDunBoss]
effect give @e[tag=EightteenDunBoss] resistance 10 2
effect give @e[tag=EightteenDunBoss] speed 10 0
execute as @a[tag=DungeonPlay_18] at @s run playsound block.anvil.destroy master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_18] [{"text": "Venus & Goddess>>","color": "dark_green"},{"text": "風の旋律！！","color": "aqua"}]