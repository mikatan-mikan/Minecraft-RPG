effect give @a[tag=DungeonPlay_season2] levitation 1 30 true
execute as @a[tag=DungeonPlay_season2] at @s run playsound entity.player.attack.sweep master @s ~ ~ ~ 1 2
tellraw @a[tag=DungeonPlay_season2] [{"text": "溶岩塊>>","color": "red"},{"text": "大噴火！！","color": "gold"}]