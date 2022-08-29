effect clear @a[tag=BossBattle11]
effect give @e[tag=EleventhDunBoss] speed 1 0
execute as @a[tag=DungeonPlay_11] at @s run playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 1 1.6 1
tellraw @a[tag=DungeonPlay_11] [{"text": "master sattelite>>","color": "green"},{"text": "俊足！！","color": "red"}]