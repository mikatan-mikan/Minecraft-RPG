effect give @a[tag=DungeonPlay_15] levitation 1 30 true
execute as @a[tag=DungeonPlay_15] at @s run playsound entity.player.attack.sweep master @s ~ ~ ~ 1 2
tellraw @a[tag=DungeonPlay_15] [{"text": "溶岩塊>>","color": "red"},{"text": "大噴火！！","color": "gold"}]