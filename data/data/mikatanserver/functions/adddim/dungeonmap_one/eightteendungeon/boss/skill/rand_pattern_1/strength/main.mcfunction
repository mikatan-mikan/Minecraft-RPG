effect clear @e[tag=EightteenDunBoss]
effect give @a[tag=BossBattle18] hunger 5 255
effect clear @a[tag=BossBattle18] absorption
effect give @a[tag=BossBattle18] instant_damage 1 1

execute as @a[tag=DungeonPlay_18] at @s run playsound item.trident.thunder master @s ~ ~ ~ 2 2 1
tellraw @a[tag=DungeonPlay_18] [{"text": "Venus & Goddess>>","color": "dark_green"},{"text": "命の希釈！！","color": "yellow"}]