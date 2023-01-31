effect clear @s
effect give @s strength 5 1
effect clear @a[tag=BossBattleseason2] absorption
effect give @a[tag=BossBattleseason2] instant_damage 1 1

execute as @a[tag=DungeonPlay_season2] at @s run playsound item.trident.thunder master @s ~ ~ ~ 2 2 1
tellraw @a[tag=DungeonPlay_season2] [{"text": "Michelle>>","color": "gold"},{"text": "鼓舞の構え！！","color": "red"}]