effect give @a[tag=BossBattleseason2] levitation 5 128 true
execute as @a[tag=DungeonPlay_season2] at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 2 1.6 1
tellraw @a[tag=DungeonPlay_season2] [{"text": "略奪者>>","color": "dark_purple"},{"text": "重力波！！","color": "red"}]