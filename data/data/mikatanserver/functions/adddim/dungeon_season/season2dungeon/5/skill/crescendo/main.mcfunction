particle angry_villager ~ ~ ~ 0.5 1 0.5 1 50
playsound block.anvil.place master @s ~ ~ ~ 1 1.3

effect give @s strength 3 0
effect give @s speed 3 0
effect give @s resistance 3 0
effect give @a[tag=DungeonPlay_season2] instant_damage 1 1
tellraw @a[tag=DungeonPlay_season2] [{"text": "Music of Finale>>","color": "red"},{"text": "クレッシェンド","color": "gold"}]