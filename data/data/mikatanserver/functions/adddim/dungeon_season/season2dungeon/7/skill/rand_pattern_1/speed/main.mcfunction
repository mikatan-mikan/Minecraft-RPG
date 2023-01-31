effect clear @e[tag=season2DunBoss]
effect give @e[tag=season2DunBoss] resistance 10 2
effect give @e[tag=season2DunBoss] speed 10 0
execute as @a[tag=DungeonPlay_season2] at @s run playsound block.anvil.destroy master @s ~ ~ ~ 1 1.6 1
tellraw @a[tag=DungeonPlay_season2] [{"text": "Venus & Goddess>>","color": "dark_green"},{"text": "風の旋律！！","color": "aqua"}]