
effect give @a[tag=DungeonPlay_season2] speed 2 4
effect give @e[tag=season2DunBoss] speed 2 4

execute as @a[tag=DungeonPlay_season2] at @s run playsound item.armor.equip_leather master @s ~ ~ ~ 2 1.4

tellraw @a[tag=DungeonPlay_season2] [{"text": "Music of Finale>>","color": "red"},{"text": "グランディオーソ","color": "dark_green"}]