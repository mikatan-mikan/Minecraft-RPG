effect clear @a[tag=BossBattleseason2]
effect give @e[tag=season2DunBoss] speed 1 0
effect give @a[distance=..5] instant_damage 1 2
execute as @a[tag=DungeonPlay_season2] at @s run playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 1 1.6 1
tellraw @a[tag=DungeonPlay_season2] [{"text": "略奪者>>","color": "dark_purple"},{"text": "俊足！！","color": "aqua"}]